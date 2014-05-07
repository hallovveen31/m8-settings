.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$ProportionalOuterFrame;,
        Lcom/android/settings/wifi/WifiSettings$CWHandler;,
        Lcom/android/settings/wifi/WifiSettings$Scanner;,
        Lcom/android/settings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final EXTRA_AUTO_FINISH_ON_CONNECT:Ljava/lang/String; = "wifi_auto_finish_on_connect"

.field private static final EXTRA_ENABLE_NEXT_ON_CONNECT:Ljava/lang/String; = "wifi_enable_next_on_connect"

.field private static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field protected static final EXTRA_SHOW_CUSTOM_BUTTON:Ljava/lang/String; = "wifi_show_custom_button"

.field protected static final EXTRA_SHOW_WIFI_REQUIRED_INFO:Ljava/lang/String; = "wifi_show_wifi_required_info"

.field private static KEY_EASY_SETTINGS:Ljava/lang/String; = null

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

.field private static final MENU_ID_TIPS_HELP:I = 0xf

.field private static final MENU_ID_UNBLOCK_NETWORK_NOTIFICATION:I = 0xd

.field private static final MENU_ID_WIFI_CALLING:I = 0x10

.field private static final MENU_ID_WPS_PBC:I = 0x1

.field private static final MENU_ID_WPS_PIN:I = 0x2

.field private static final RESULT_SKIP:I = 0x1

.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field private static final SAVE_DIALOG_EDIT_MODE:Ljava/lang/String; = "edit_mode"

.field private static final TAG:Ljava/lang/String; = "WifiSettings"

.field public static final WEP_ERROR:I = 0x14

.field private static final WIFI_AND_MOBILE_SKIPPED_DIALOG_ID:I = 0x5

.field private static final WIFI_DIALOG_ID:I = 0x1

.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x2710

.field private static final WIFI_SKIPPED_DIALOG_ID:I = 0x4

.field private static WIFI_SUBJECT:Ljava/lang/String; = null

.field private static final WPS_PBC_DIALOG_ID:I = 0x2

.field private static final WPS_PIN_DIALOG_ID:I = 0x3


# instance fields
.field private DEBUG:Z

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

.field private mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

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

.field private mHelpAvailable:Z

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

.field private final mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mShowFlag:Z

.field protected mType:I

.field private mUserManager:Landroid/os/UserManager;

.field private mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

.field private final mWiFiDialogFilter:Landroid/content/IntentFilter;

.field private final mWiFiDialogReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 262
    const-string v0, "connections_wifi"

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->WIFI_SUBJECT:Ljava/lang/String;

    .line 279
    const-string v0, "key_easy_settings"

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->KEY_EASY_SETTINGS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 286
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 207
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mType:I

    .line 212
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    .line 213
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBound:Z

    .line 214
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 281
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    .line 1661
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mShowFlag:Z

    .line 1748
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$15;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$15;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 288
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWiFiDialogFilter:Landroid/content/IntentFilter;

    .line 309
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWiFiDialogFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.settings.wifi.launchwifidialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWiFiDialogFilter:Landroid/content/IntentFilter;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 311
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWiFiDialogReceiver:Landroid/content/BroadcastReceiver;

    .line 325
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    .line 326
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;)Lcom/android/settings/wifi/AccessPoint;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->m8021xAp:Lcom/android/settings/wifi/AccessPoint;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/settings/wifi/WifiSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mShowFlag:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiSettings;)Lcom/htc/cw/ICWService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/wifi/WifiSettings;Lcom/htc/cw/ICWService;)Lcom/htc/cw/ICWService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiDialog;)Lcom/android/settings/wifi/WifiDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isPhone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateScanningCursor(Z)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1226
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 1227
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 1821
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1824
    :cond_0
    return-void
.end method

.method private checkBlockedAPSsid(Ljava/lang/String;)Z
    .locals 6
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 1313
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mBlockedList:Ljava/util/List;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 1331
    :cond_0
    :goto_0
    return v2

    .line 1316
    :cond_1
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mBlockedList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 1317
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " blockedSSID size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mBlockedList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mBlockedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1320
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mBlockedList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1321
    .local v0, blockedSSID:Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v3, :cond_3

    .line 1322
    const-string v3, "WifiSettings"

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

    .line 1325
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1326
    const/4 v2, 0x1

    goto :goto_0

    .line 1319
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private checkWepStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1520
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_1

    .line 1542
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_2

    .line 1523
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWepStatus - ssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", networkId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/settings/wifi/WifiSettings;->findAccessPoint(ILjava/lang/String;Ljava/lang/String;I)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    .line 1530
    .local v0, accesspoint:Lcom/android/settings/wifi/AccessPoint;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v4, v1, :cond_0

    .line 1531
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1532
    :cond_5
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_6

    .line 1533
    const-string v1, "WifiSettings"

    const-string v2, "showWepErrorDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_6
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1537
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showWepErrorDialog(Lcom/android/settings/wifi/AccessPoint;)V

    goto/16 :goto_0
.end method

.method private disableAllNetworks()V
    .locals 3

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 1990
    const-string v0, "WifiSettings"

    const-string v1, "disableAllNetworks, mWifiManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_0
    :goto_0
    return-void

    .line 2003
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 2004
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedAccessPoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

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
    .line 1976
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1977
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 1978
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 1979
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1980
    .local v0, ap:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/wifi/AccessPoint;->matches(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 1985
    .end local v0           #ap:Lcom/android/settings/wifi/AccessPoint;
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :goto_1
    return-object v0

    .line 1976
    .restart local v2       #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1985
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getWFCState()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2165
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.htc.vowifi/status/WFC_STATE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2166
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 2167
    .local v8, state:I
    if-eqz v6, :cond_1

    .line 2168
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2169
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2170
    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2171
    .local v7, mString:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 2172
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2175
    .end local v7           #mString:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2177
    :cond_1
    const-string v0, "WifiSettings"

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

    .line 2178
    return v8
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1354
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1355
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1356
    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->updateWifiState(I)V

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1358
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

    .line 1361
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1362
    const-string v7, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1363
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiSettings;->updateScanningCursor(Z)V

    goto :goto_0

    .line 1365
    :cond_3
    const-string v7, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1372
    const-string v7, "newState"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/SupplicantState;

    .line 1375
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

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/wifi/WifiSettings;->handleSupplicantStateError(Landroid/net/wifi/SupplicantState;ZI)V

    .line 1381
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1382
    invoke-static {v6}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 1384
    :cond_4
    invoke-direct {p0, v11}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 1387
    .end local v6           #state:Landroid/net/wifi/SupplicantState;
    :cond_5
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1388
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 1390
    .local v4, info:Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1391
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1392
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1393
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1394
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1395
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1396
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 1397
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setResult(I)V

    .line 1398
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 1402
    .end local v1           #activity:Landroid/app/Activity;
    .end local v4           #info:Landroid/net/NetworkInfo;
    :cond_6
    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1403
    invoke-direct {p0, v11}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1404
    :cond_7
    const-string v7, "android.net.wifi.ERROR"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1405
    const-string v7, "errorCode"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1406
    .local v3, errorCode:I
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 1408
    :sswitch_0
    const v7, 0x7f0c007d

    invoke-static {p1, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1412
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWepStatus()V

    goto/16 :goto_0

    .line 1415
    .end local v3           #errorCode:I
    :cond_8
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1417
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1419
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1420
    .local v5, netinfo:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    sget v8, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->TYPE_USBNET:I

    if-ne v7, v8, :cond_0

    .line 1421
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mIPTEnabled:Z

    .line 1422
    const-string v7, "WifiSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive USBNET connection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mIPTEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mIPTEnabled:Z

    if-eqz v7, :cond_0

    .line 1424
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    goto/16 :goto_0

    .line 1406
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

    .line 1545
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "handleSupplicantStateError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_2

    .line 1586
    :cond_1
    :goto_0
    return-void

    .line 1548
    :cond_2
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_3

    .line 1549
    const-string v0, "WifiSettings"

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

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bssid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", networkId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_3
    if-eqz p2, :cond_1

    .line 1559
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->findAccessPoint(ILjava/lang/String;Ljava/lang/String;I)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    .line 1562
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->findAccessPoint(ILjava/lang/String;Ljava/lang/String;I)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    .line 1565
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_4

    .line 1566
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last info security = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_5

    .line 1569
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last info security = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_5
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1573
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_7

    .line 1574
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showErrorDialog(Lcom/android/settings/wifi/AccessPoint;)V

    .line 1575
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    .line 1583
    :cond_6
    :goto_1
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    goto/16 :goto_0

    .line 1576
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    .line 1577
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1578
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "security = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->show8021xWarningDialog()V

    goto :goto_1
.end method

.method private isHelpAvailable(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 718
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 719
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v0, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.htc.showme"

    const-string v6, "com.htc.showme.ui.Search"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 721
    const-string v4, "android.intent.extra.SUBJECT"

    sget-object v5, Lcom/android/settings/wifi/WifiSettings;->WIFI_SUBJECT:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 725
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 726
    const-string v4, "WifiSettings"

    const-string v5, "Tips & Help application exists."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :goto_0
    return v3

    .line 730
    :cond_0
    const-string v3, "WifiSettings"

    const-string v4, "Tips & Help application does not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isPhone()Z
    .locals 2

    .prologue
    .line 1098
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1100
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
    .line 2137
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-ne p1, v0, :cond_0

    .line 2138
    const/4 v0, 0x1

    .line 2140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOffMessage()V
    .locals 4

    .prologue
    .line 1204
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1205
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const v3, 0x7f0c0a96

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1206
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1208
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1210
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1211
    const v1, 0x7f0c0a9a

    .line 1217
    .local v1, resId:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1218
    .local v0, charSeq:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1220
    .end local v0           #charSeq:Ljava/lang/CharSequence;
    .end local v1           #resId:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 1221
    return-void

    .line 1213
    :cond_1
    const v1, 0x7f0c0a99

    .restart local v1       #resId:I
    goto :goto_0

    .line 1215
    .end local v1           #resId:I
    :cond_2
    const v1, 0x7f0c0a9b

    .restart local v1       #resId:I
    goto :goto_0
.end method

.method private show8021xWarningDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0c07f2

    const v4, 0x7f0c07f0

    .line 1664
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1666
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    .line 1668
    .local v0, accesspoint:Lcom/android/settings/wifi/AccessPoint;
    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1670
    const/4 v1, 0x0

    .line 1672
    .local v1, readonly:Z
    iget-object v2, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/CustomUtil;->readOnlySSID(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1673
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00a5

    new-instance v4, Lcom/android/settings/wifi/WifiSettings$13;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiSettings$13;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1682
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1700
    .end local v0           #accesspoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v1           #readonly:Z
    :cond_3
    :goto_0
    return-void

    .line 1685
    .restart local v0       #accesspoint:Lcom/android/settings/wifi/AccessPoint;
    .restart local v1       #readonly:Z
    :cond_4
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c1004

    new-instance v4, Lcom/android/settings/wifi/WifiSettings$14;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiSettings$14;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00a6

    invoke-virtual {v2, v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1696
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1697
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 1021
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 1023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1027
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1028
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1030
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 1031
    return-void
.end method

.method private showErrorDialog(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 4
    .parameter "accessPoint"

    .prologue
    const/4 v3, 0x2

    .line 1589
    const-string v0, "WifiSettings"

    const-string v1, "showErrorDialog() - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1592
    :cond_2
    iget v0, p1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v0, v3, :cond_3

    .line 1593
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1595
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticatingAp:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1596
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 1621
    :cond_3
    return-void
.end method

.method private showWepErrorDialog(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 3
    .parameter "accessPoint"

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 1109
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1110
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 1111
    return-void
.end method

.method private showWepInvalidDialog(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 3
    .parameter "accessPoint"

    .prologue
    .line 1114
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1115
    const-string v0, "WifiSettings"

    const-string v1, "showWepInvalidDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    .line 1119
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 1121
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1122
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 1123
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 1432
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1433
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_4

    .line 1438
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1443
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1444
    if-eqz p1, :cond_2

    .line 1445
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1448
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_5

    .line 1450
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 1451
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 1452
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1453
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1454
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConnectionState access pont: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLastInfo rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLastState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", networkId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1440
    .end local v1           #i:I
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto/16 :goto_1

    .line 1458
    .restart local v1       #i:I
    :cond_5
    sget-boolean v3, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v3, :cond_0

    .line 1459
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    if-eqz v3, :cond_6

    .line 1460
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiOffloadAutoOnSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1461
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiOffloadSettings;

    if-eqz v3, :cond_0

    .line 1462
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wifi/WifiOffloadSettings;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiOffloadSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0
.end method

.method private updateEasySettings()V
    .locals 5

    .prologue
    .line 1499
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1501
    .local v0, act:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1502
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1503
    .local v1, actstr:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "com.android.settings.SubSettings"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1504
    sget-boolean v4, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_EASY_SETTINGS:Z

    if-eqz v4, :cond_0

    .line 1506
    new-instance v2, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 1507
    .local v2, easySettingsCategory:Lcom/htc/preference/HtcPreferenceCategory;
    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 1508
    .local v3, preference:Lcom/htc/preference/HtcPreference;
    sget-object v4, Lcom/android/settings/wifi/WifiSettings;->KEY_EASY_SETTINGS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 1509
    const v4, 0x7f0c0916

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 1510
    const v4, 0x7f0c0917

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 1511
    const v4, 0x7f0c0915

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 1512
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1513
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1517
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
    .line 2155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 2156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 2162
    :cond_0
    :goto_0
    return-void

    .line 2159
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 1468
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1469
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1470
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1473
    :cond_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 1474
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 1475
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 1479
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1493
    :goto_0
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1494
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1495
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1496
    :goto_1
    return-void

    .line 1481
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 1485
    :pswitch_1
    const v1, 0x7f0c0a8d

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 1489
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    goto :goto_0

    .line 1479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
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

    .line 1233
    iget-boolean v11, p0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "WifiSettings"

    const-string v12, "constructAccessPoints() enter"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableBlockOpenNetworkNotify()Z

    move-result v5

    .line 1236
    .local v5, enableBlockAp:Z
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getOpenNetworkBlockedList()Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mBlockedList:Ljava/util/List;

    .line 1238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    .local v1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/wifi/AccessPoint;>;"
    new-instance v2, Lcom/android/settings/wifi/WifiSettings$Multimap;

    const/4 v11, 0x0

    invoke-direct {v2, p0, v11}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    .line 1243
    .local v2, apMap:Lcom/android/settings/wifi/WifiSettings$Multimap;,"Lcom/android/settings/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 1244
    .local v4, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_4

    .line 1245
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

    .line 1246
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/wifi/WifiSettings;->mType:I

    invoke-direct {v0, v11, v3, v12}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    .line 1247
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1248
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    if-eqz v5, :cond_3

    iget v11, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v11, :cond_3

    iget-object v11, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/WifiSettings;->checkBlockedAPSsid(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1250
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_1

    .line 1251
    const-string v11, "WifiSettings"

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

    .line 1253
    :cond_1
    invoke-virtual {v0, v14}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    .line 1261
    :cond_2
    :goto_1
    iget-object v11, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v11, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1255
    :cond_3
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_2

    .line 1256
    const-string v11, "WifiSettings"

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

    goto :goto_1

    .line 1265
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v10

    .line 1266
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v10, :cond_e

    .line 1267
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 1269
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

    .line 1274
    iget-boolean v11, p0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v11, :cond_6

    const-string v11, "WifiSettings"

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

    .line 1275
    :cond_6
    const/4 v6, 0x0

    .line 1276
    .local v6, found:Z
    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1277
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1278
    const/4 v6, 0x1

    .line 1280
    :cond_8
    if-eqz v5, :cond_7

    iget v11, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v11, :cond_7

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/WifiSettings;->checkBlockedAPSsid(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1281
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_9

    .line 1282
    const-string v11, "WifiSettings"

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

    .line 1284
    :cond_9
    invoke-virtual {v0, v14}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    goto :goto_3

    .line 1287
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_a
    if-nez v6, :cond_5

    .line 1288
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget v12, p0, Lcom/android/settings/wifi/WifiSettings;->mType:I

    invoke-direct {v0, v11, v9, v12}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;I)V

    .line 1289
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1290
    if-eqz v5, :cond_c

    iget v11, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v11, :cond_c

    iget-object v11, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings/wifi/WifiSettings;->checkBlockedAPSsid(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1291
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_b

    .line 1292
    const-string v11, "WifiSettings"

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

    .line 1294
    :cond_b
    invoke-virtual {v0, v14}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    .line 1297
    :cond_c
    sget-boolean v11, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v11, :cond_d

    .line 1298
    const-string v11, "WifiSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "show result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_d
    iget-object v11, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v11, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1306
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v6           #found:Z
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #result:Landroid/net/wifi/ScanResult;
    :cond_e
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1307
    return-object v1
.end method

.method forget()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2010
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v3, :cond_0

    .line 2012
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :goto_0
    return-void

    .line 2016
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2017
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 2019
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2020
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2022
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2025
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method getAccessPointsCount()I
    .locals 2

    .prologue
    .line 2049
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 2050
    .local v0, wifiIsEnabled:Z
    if-eqz v0, :cond_0

    .line 2051
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 2053
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

    .line 1142
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1144
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

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 409
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.wifi.direct"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    .line 412
    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 413
    const-string v9, "user"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mUserManager:Landroid/os/UserManager;

    .line 415
    new-instance v9, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 430
    new-instance v9, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 445
    new-instance v9, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 460
    if-eqz p1, :cond_0

    const-string v9, "wifi_ap_state"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 462
    const-string v9, "edit_mode"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 463
    const-string v9, "wifi_ap_state"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 467
    .local v3, activity:Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 470
    .local v6, intent:Landroid/content/Intent;
    const-string v9, "wifi_auto_finish_on_connect"

    invoke-virtual {v6, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 472
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v9, :cond_2

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 478
    :cond_1
    const-string v9, "connectivity"

    invoke-virtual {v3, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 480
    .local v4, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v4, :cond_2

    invoke-virtual {v4, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 482
    const/4 v9, -0x1

    invoke-virtual {v3, v9}, Landroid/app/Activity;->setResult(I)V

    .line 483
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 584
    .end local v4           #connectivity:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 490
    :cond_2
    const-string v9, "wifi_enable_next_on_connect"

    invoke-virtual {v6, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 492
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v9, :cond_3

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 494
    const-string v9, "connectivity"

    invoke-virtual {v3, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 496
    .restart local v4       #connectivity:Landroid/net/ConnectivityManager;
    if-eqz v4, :cond_3

    .line 497
    invoke-virtual {v4, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 499
    .local v5, info:Landroid/net/NetworkInfo;
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 504
    .end local v4           #connectivity:Landroid/net/ConnectivityManager;
    .end local v5           #info:Landroid/net/NetworkInfo;
    :cond_3
    const v9, 0x7f06005b

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 506
    .local v0, act:Landroid/app/Activity;
    const-string v9, "WifiSettings"

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

    .line 508
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v9, :cond_4

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v9

    const/high16 v10, 0x1a4

    invoke-virtual {v9, v10}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 519
    :cond_4
    new-instance v2, Lcom/android/settings/framework/widget/HtcToggleButton;

    invoke-direct {v2, v3}, Lcom/android/settings/framework/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 539
    .local v2, actionBarSwitch:Lcom/android/settings/framework/widget/HtcToggleButton;
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v9, :cond_8

    .line 540
    new-instance v9, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;

    invoke-direct {v9, v3}, Lcom/android/settings/framework/core/wireless/wifi/HtcWifiWidgetEnabler;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    .line 543
    instance-of v9, v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v9, :cond_7

    move-object v8, v3

    .line 544
    check-cast v8, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 545
    .local v8, preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    invoke-virtual {v8}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onIsHidingHeaders()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v8}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onIsMultiPane()Z

    move-result v9

    if-nez v9, :cond_6

    .line 546
    :cond_5
    invoke-virtual {v8, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    .line 548
    :cond_6
    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v8, v9}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addCallback(Ljava/lang/Object;)V

    .line 549
    invoke-virtual {v8}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->requestHandlers()V

    .line 551
    invoke-virtual {v8}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v1

    .line 552
    .local v1, actionBarExt:Lcom/htc/widget/ActionBarExt;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 554
    .end local v1           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v8           #preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_7
    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v9, v2}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->bindToggleButton(Lcom/android/settings/framework/widget/HtcToggleButton;)V

    .line 557
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x1020004

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 558
    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v9, :cond_9

    .line 559
    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    new-instance v10, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v10}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 563
    :cond_9
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v9, :cond_a

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 566
    :cond_a
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 569
    sget-boolean v9, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    if-eqz v9, :cond_b

    .line 570
    new-instance v7, Landroid/os/HandlerThread;

    const-string v9, "WifiSettingsThread"

    invoke-direct {v7, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 571
    .local v7, mainThread:Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 572
    new-instance v9, Lcom/android/settings/wifi/WifiSettings$CWHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/settings/wifi/WifiSettings$CWHandler;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.htc.cw.CWService"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBound:Z

    .line 578
    .end local v7           #mainThread:Landroid/os/HandlerThread;
    :cond_b
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableBlockOpenNetworkNotify()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 579
    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getOpenNetworkBlockedList()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mBlockedList:Ljava/util/List;

    .line 583
    :cond_c
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2044
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 2045
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 2046
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v2, 0x1

    .line 1827
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 1828
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 1868
    :cond_0
    :goto_0
    return-void

    .line 1829
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isCWRegisterBtn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1832
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    if-eqz v0, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiSettings$CWHandler;->sendEmptyMessage(I)Z

    .line 1834
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1835
    const-string v0, "WifiSettings"

    const-string v1, "sendEmptyMessage MSG_REGISTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1838
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isCWUnRegisterBtn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1839
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    if-eqz v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings$CWHandler;->sendEmptyMessage(I)Z

    .line 1841
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1842
    const-string v0, "WifiSettings"

    const-string v1, "sendEmptyMessage MSG_UNREGISTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1847
    :cond_3
    sget-boolean v0, Lcom/android/settings/wifi/WifiOffloadManager;->isWifiOffloadSupported:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_4

    .line 1848
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v0, :cond_4

    .line 1850
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c08a9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c08a8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a3

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$16;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 1864
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 881
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_1

    .line 882
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .line 972
    :cond_0
    :goto_0
    return v3

    .line 884
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 972
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 886
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIPTEnabled:Z

    if-eqz v4, :cond_2

    .line 887
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->showIPTAlertDialog()V

    goto :goto_0

    .line 890
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v5, :cond_3

    .line 891
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 893
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v4, :cond_4

    .line 895
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 896
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 899
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 905
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ltz v4, :cond_5

    .line 906
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 908
    :cond_5
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiSettings"

    const-string v5, "get negative network id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 913
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v4, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 917
    :pswitch_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->setFirstPriority()V

    goto :goto_0

    .line 921
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->disableAllNetworks()V

    goto :goto_0

    .line 926
    :pswitch_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4, v3}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    .line 927
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->addOpenNetworkToBlockedList(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 931
    :pswitch_7
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4, v3}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    .line 932
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 937
    :pswitch_8
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ltz v4, :cond_9

    .line 938
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v4, v4, Lcom/android/settings/wifi/AccessPoint;->auto_join:Z

    if-nez v4, :cond_7

    .line 939
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_6

    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable auto join network id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-static {v4, v3, v5}, Lcom/android/settings/wifi/WifiManagerWrapper;->setVFAutoJoin(Landroid/net/wifi/WifiManager;ZI)V

    goto/16 :goto_0

    .line 943
    :cond_7
    sget-boolean v4, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v4, :cond_8

    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable network id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_8
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-static {v4, v7, v5}, Lcom/android/settings/wifi/WifiManagerWrapper;->setVFAutoJoin(Landroid/net/wifi/WifiManager;ZI)V

    goto/16 :goto_0

    .line 947
    :cond_9
    const-string v4, "WifiSettings"

    const-string v5, "invalid net id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 953
    :pswitch_9
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 954
    const-string v4, "WifiSettings"

    const-string v5, "launch wifidialog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 956
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 957
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 958
    .local v2, parcelable:Landroid/os/Parcelable;
    if-eqz v2, :cond_a

    .line 959
    const-string v4, "key_config"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 960
    const-string v4, "key_security"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 962
    :cond_a
    const-string v4, "key_networkid"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 963
    const-string v4, "key_wfcinfo"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 964
    const-string v4, "com.htc.vowifi"

    const-string v5, "com.htc.vowifi.VoWifiDialog"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 966
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 884
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->isHelpAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHelpAvailable:Z

    .line 335
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 336
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 811
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_5

    .line 812
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreference;

    .line 815
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    instance-of v2, v1, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_5

    .line 816
    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 817
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 818
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    if-nez v2, :cond_0

    .line 820
    const/4 v2, 0x7

    const v3, 0x7f0c0d4a

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 822
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v2, v6, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ltz v2, :cond_7

    .line 824
    sget-boolean v2, Lcom/android/settings/wifi/CustomUtil;->DISCONNECT_NETWORK:Z

    if-eqz v2, :cond_1

    .line 825
    const/16 v2, 0xb

    const v3, 0x7f0c07ce

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 827
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/CustomUtil;->readOnlySSID(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_2

    .line 829
    const/16 v2, 0x8

    const v3, 0x7f0c0d4b

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 830
    const/16 v2, 0x9

    const v3, 0x7f0c0d4c

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 834
    :cond_2
    sget-boolean v2, Lcom/android/settings/wifi/CustomUtil;->ENABLE_FIRST_PRIORITY:Z

    if-eqz v2, :cond_3

    .line 835
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->isFirstPriority()Z

    move-result v2

    if-nez v2, :cond_3

    .line 836
    const/16 v2, 0xa

    const v3, 0x7f0c0874

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 841
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/CustomUtil;->autoJoinSsid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 842
    const/16 v2, 0xe

    const v3, 0x7f0c07cf

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 844
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 845
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiManagerWrapper;->getVFAutoJoin(Landroid/net/wifi/WifiManager;I)I

    move-result v2

    if-eq v2, v4, :cond_6

    .line 847
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-boolean v5, v2, Lcom/android/settings/wifi/AccessPoint;->auto_join:Z

    .line 848
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 860
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableBlockOpenNetworkNotify()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v2, :cond_5

    .line 861
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v2, v2, Lcom/android/settings/wifi/AccessPoint;->blocked:Z

    if-eqz v2, :cond_8

    .line 862
    const/16 v2, 0xd

    const v3, 0x7f0c07e8

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 877
    :cond_5
    :goto_1
    return-void

    .line 850
    .restart local v0       #item:Landroid/view/MenuItem;
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iput-boolean v4, v2, Lcom/android/settings/wifi/AccessPoint;->auto_join:Z

    .line 852
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 857
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_7
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_4

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting error network id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 864
    :cond_8
    const/16 v2, 0xc

    const v3, 0x7f0c07e7

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "dialogId"

    .prologue
    const v5, 0x7f0c0d95

    const v4, 0x7f0c0d94

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1035
    packed-switch p1, :pswitch_data_0

    .line 1094
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1037
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1038
    .local v0, ap:Lcom/android/settings/wifi/AccessPoint;
    if-nez v0, :cond_0

    .line 1039
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 1040
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    .end local v0           #ap:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/settings/wifi/WifiSettings;->mType:I

    invoke-direct {v0, v3, v4, v5}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 1042
    .restart local v0       #ap:Lcom/android/settings/wifi/AccessPoint;
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1046
    :cond_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1047
    new-instance v3, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-direct {v3, v4, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1049
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1047
    goto :goto_1

    .line 1051
    .end local v0           #ap:Lcom/android/settings/wifi/AccessPoint;
    :pswitch_1
    new-instance v1, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 1053
    :pswitch_2
    new-instance v2, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    goto :goto_0

    .line 1055
    :pswitch_3
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0d96

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$10;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1074
    :pswitch_4
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0d97

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$12;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$11;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1035
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

    .line 670
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isRestrictedAndNotPinProtected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 673
    .local v0, wifiIsEnabled:Z
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v1, :cond_2

    .line 674
    invoke-interface {p1, v3, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 678
    invoke-interface {p1, v3, v5, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 713
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .line 682
    :cond_2
    const/4 v1, 0x6

    const v2, 0x7f0c0d48

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 686
    invoke-interface {p1, v3, v5, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 689
    invoke-interface {p1, v3, v4, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02028d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 693
    const/4 v1, 0x2

    const v2, 0x7f0c0d46

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 697
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v1, :cond_3

    .line 698
    const/4 v1, 0x3

    const v2, 0x7f0c0d47

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 704
    :cond_3
    const/4 v1, 0x5

    const v2, 0x7f0c0d49

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 707
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHelpAvailable:Z

    if-eqz v1, :cond_1

    .line 708
    const/16 v1, 0xf

    const v2, 0x7f0c00f0

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 341
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v5, :cond_3

    .line 342
    const v5, 0x7f0400e5

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 343
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0901dd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 344
    .local v3, other:Landroid/view/View;
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const v5, 0x7f0901db

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 353
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 354
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/view/LayoutInflater;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 377
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "wifi_show_custom_button"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 378
    const v5, 0x7f0901e0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 379
    const v5, 0x7f0901e1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 380
    const v5, 0x7f0901e3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 381
    const v5, 0x7f090040

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 383
    const v5, 0x7f0901e2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 384
    .local v1, customButton:Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 385
    new-instance v5, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    .end local v1           #customButton:Landroid/widget/Button;
    :cond_1
    const-string v5, "wifi_show_wifi_required_info"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 398
    const v5, 0x7f0901dc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 403
    .end local v0           #b:Landroid/widget/ImageButton;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #other:Landroid/view/View;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    :goto_0
    return-object v4

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCWHandler:Lcom/android/settings/wifi/WifiSettings$CWHandler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$CWHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 650
    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 655
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 659
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBound:Z

    if-eqz v0, :cond_2

    .line 660
    const-string v0, "WifiSettings"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBound:Z

    .line 665
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 2127
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mShowFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->m8021xAp:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 2128
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->m8021xAp:Lcom/android/settings/wifi/AccessPoint;

    const/4 v3, 0x5

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 2129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 2130
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->m8021xAp:Lcom/android/settings/wifi/AccessPoint;

    .line 2131
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mLastAuthenticating8021xAp:Lcom/android/settings/wifi/AccessPoint;

    .line 2132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mShowFlag:Z

    .line 2134
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 752
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    :goto_0
    return v6

    .line 754
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 806
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    goto :goto_0

    .line 756
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    move v6, v8

    .line 757
    goto :goto_0

    .line 759
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_1

    .line 760
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

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
    move v6, v8

    .line 768
    goto :goto_0

    .line 766
    :cond_1
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 770
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    move v6, v8

    .line 771
    goto :goto_0

    .line 773
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 774
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIPTEnabled:Z

    if-eqz v0, :cond_3

    .line 775
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->showIPTAlertDialog()V

    :cond_2
    :goto_2
    move v6, v8

    .line 780
    goto :goto_0

    .line 777
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    goto :goto_2

    .line 782
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_4
    move v6, v8

    .line 785
    goto :goto_0

    .line 787
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_5

    .line 788
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

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
    move v6, v8

    .line 796
    goto/16 :goto_0

    .line 794
    :cond_5
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_3

    .line 798
    :pswitch_7
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    .local v7, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.htc.showme"

    const-string v2, "com.htc.showme.ui.Search"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 800
    const-string v0, "android.intent.extra.SUBJECT"

    sget-object v1, Lcom/android/settings/wifi/WifiSettings;->WIFI_SUBJECT:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    move v6, v8

    .line 803
    goto/16 :goto_0

    .line 754
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 634
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 636
    invoke-static {}, Lcom/android/settings/wifi/WifiStatusReceiver;->onPause()V

    .line 637
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 638
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWiFiDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 642
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 5
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 977
    instance-of v3, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    .line 978
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIPTEnabled:Z

    if-eqz v3, :cond_1

    .line 979
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->showIPTAlertDialog()V

    .line 1017
    .end local p2
    :cond_0
    :goto_0
    return v2

    .line 983
    .restart local p2
    :cond_1
    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    if-eqz v3, :cond_2

    .line 985
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;

    invoke-interface {v3}, Lcom/htc/cw/ICWService;->queryCWState()I

    move-result v3

    invoke-static {v3}, Lcom/android/settings/wifi/WifiConfigController;->setCWstate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :cond_2
    :goto_1
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1003
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 986
    .restart local p2
    :catch_0
    move-exception v0

    .line 987
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "WifiSettings"

    const-string v4, "[C+W] queryCWState is failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1004
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    instance-of v3, p2, Lcom/htc/preference/HtcPreference;

    if-eqz v3, :cond_4

    .line 1006
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1008
    .local v1, key:Ljava/lang/String;
    sget-object v3, Lcom/android/settings/wifi/WifiSettings;->KEY_EASY_SETTINGS:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1009
    const-string v3, "WifiSettings"

    const-string v4, " onclick easy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->startEasyWifiSettings(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1015
    .end local v1           #key:Ljava/lang/String;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 588
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 589
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onActivateEnabler()V

    .line 592
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/WifiStatusReceiver;->onResume()V

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 595
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWiFiDialogReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWiFiDialogFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 626
    :cond_1
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 629
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 630
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 736
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 739
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 741
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 742
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 743
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 744
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 747
    :cond_0
    return-void
.end method

.method pauseWifiScan()V
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2064
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2033
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2036
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 2037
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2071
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2073
    :cond_0
    return-void
.end method

.method public showIPTAlertDialog()V
    .locals 3

    .prologue
    .line 1958
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1959
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/IPTAlertDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1960
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1961
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 1962
    return-void
.end method

.method public showWpsPbcDialog(Ljava/lang/String;Landroid/net/wifi/WpsInfo;)V
    .locals 3
    .parameter "type"
    .parameter "config"

    .prologue
    .line 1949
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1950
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1951
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1952
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1953
    const-string v1, "config"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1954
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    .line 1955
    return-void
.end method

.method public startEasyWifiSettings(Landroid/os/Bundle;)V
    .locals 7
    .parameter "extras"

    .prologue
    const/4 v4, 0x0

    .line 2145
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_0

    .line 2146
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

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

    .line 2152
    :goto_0
    return-void

    .line 2150
    :cond_0
    const-class v0, Lcom/android/settings/wifi/EasyWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v4}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 5
    .parameter "configController"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 1871
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1873
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 1874
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_1

    .line 1875
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isShowEapErrUI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1877
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->showEapErrorUI(Z)V

    .line 1880
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1881
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hasSecurity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1882
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->setUIflag(Z)V

    .line 1942
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1943
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1945
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1946
    return-void

    .line 1885
    :cond_3
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_8

    .line 1886
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    .line 1887
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1888
    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_4

    .line 1889
    const-string v1, "WifiSettings"

    const-string v2, "reconnect to SECURITY_WEP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    :cond_4
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isInvalidPassword()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1893
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->isValidWepPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1895
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1898
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showWepInvalidDialog(Lcom/android/settings/wifi/AccessPoint;)V

    goto :goto_0

    .line 1901
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1902
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1905
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1906
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1910
    :cond_8
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1911
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1915
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

    .line 1917
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->showEapErrorUI(Z)V

    .line 1921
    :cond_a
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isWepSecurity()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1922
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->isValidWepPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1924
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1926
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hasSecurity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1927
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->setUIflag(Z)V

    goto/16 :goto_0

    .line 1931
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showWepInvalidDialog(Lcom/android/settings/wifi/AccessPoint;)V

    goto/16 :goto_0

    .line 1934
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1935
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hasSecurity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1936
    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->setUIflag(Z)V

    goto/16 :goto_0
.end method

.method protected updateAccessPoints()V
    .locals 7

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isRestrictedAndNotPinProtected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1159
    const v5, 0x7f0c0d4f

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 1162
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    .line 1164
    .local v4, wifiState:I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1193
    :pswitch_0
    const v5, 0x7f0c0a8e

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 1167
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v1

    .line 1168
    .local v1, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 1169
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateEasySettings()V

    .line 1171
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 1172
    const v5, 0x7f0c0a97

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 1174
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1175
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1176
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/framework/os/HtcServiceManager;->getDeviceManager3LM(Landroid/content/Context;)Lcom/htc/service/DeviceManager3LM;

    move-result-object v2

    .line 1179
    .local v2, dm:Lcom/htc/service/DeviceManager3LM;
    if-eqz v2, :cond_5

    const/4 v5, 0x1

    :goto_2
    iget-object v6, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/htc/service/DeviceManager3LM;->isSsidAllowed(Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 1180
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1

    .line 1179
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 1183
    .end local v2           #dm:Lcom/htc/service/DeviceManager3LM;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1

    .line 1189
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    .end local v1           #accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    goto :goto_0

    .line 1197
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    goto :goto_0

    .line 1164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
