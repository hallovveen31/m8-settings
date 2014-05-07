.class public final Lcom/android/settings/bluetooth/HtcMiniSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "HtcMiniSettings.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static HTC_MINI_SUBJECT:Ljava/lang/String; = null

.field private static final MENU_ID_TIPS_HELP:I = 0x1

.field private static final RETRY_CONNECT_TIMES:I = 0x1

.field private static final STATE_APPLY_POLICY:I = 0x1

.field private static final STATE_CANCEL:I = 0x5

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_PROCESS:I = 0x2

.field private static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HtcMiniSettings"

.field private static final TIMEOUT:J = 0x2bf20L

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActivityStarted:Z

.field private mAutoConnect:Z

.field private mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mConnectedHtcMiniCount:I

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHelpAvailable:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

.field private final mPairedHtcMini:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreBluetoothState:Z

.field private mRetryConnectTimes:I

.field private mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

.field mScanPreference:Lcom/htc/preference/HtcPreference;

.field mSetupPreference:Lcom/htc/preference/HtcPreference;

.field private mStartTime:J

.field private mState:I

.field private final mUiHandler:Landroid/os/Handler;

.field private mUpdatingContent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    const-string v0, "accessories_htc_mini"

    sput-object v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->HTC_MINI_SUBJECT:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryConnectTimes:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    new-instance v0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcMiniSettings$1;-><init>(Lcom/android/settings/bluetooth/HtcMiniSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/bluetooth/HtcMiniSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcMiniSettings$2;-><init>(Lcom/android/settings/bluetooth/HtcMiniSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/HtcMiniSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/settings/bluetooth/HtcMiniSettings;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/settings/bluetooth/HtcMiniSettings;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/HtcMiniSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/HtcMiniSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/bluetooth/HtcMiniSettings;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/HtcMiniSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/HtcMiniSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryConnectTimes:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/bluetooth/HtcMiniSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryConnectTimes:I

    return p1
.end method

.method static synthetic access$510(Lcom/android/settings/bluetooth/HtcMiniSettings;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryConnectTimes:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryConnectTimes:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/HtcMiniSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/HtcMiniSettings;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/HtcMiniSettings;->connectToNext(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/bluetooth/HtcMiniSettings;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/bluetooth/HtcMiniSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->startScanning()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    sget-object v1, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcMiniSettings"

    const-string v2, "acquire full wakelock 180000"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x2000001a

    const-string v2, "HtcMiniAutoConnect_60"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v1, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_1
    return-void
.end method

.method private addDeviceCategory(Lcom/htc/preference/HtcPreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Lcom/htc/preference/HtcPreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    return-void
.end method

.method private connectToNext(J)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcMiniSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect next "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/HtcMiniSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/HtcMiniSettings$3;-><init>(Lcom/android/settings/bluetooth/HtcMiniSettings;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isHelpAvailable(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.htc.showme"

    const-string v6, "com.htc.showme.ui.Search"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.SUBJECT"

    sget-object v5, Lcom/android/settings/bluetooth/HtcMiniSettings;->HTC_MINI_SUBJECT:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "HtcMiniSettings"

    const-string v5, "Tips & Help application exists."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    const-string v3, "HtcMiniSettings"

    const-string v4, "Tips & Help application does not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onHandleStateChanged(I)V
    .locals 14

    const v13, 0x7f0c0aee

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-boolean v6, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtcMiniSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onHandleStateChanged :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-ne v6, p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq p1, v12, :cond_3

    const/4 v6, 0x4

    if-eq p1, v6, :cond_3

    const/4 v6, 0x3

    if-ne p1, v6, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->releaseWakeLock()V

    :cond_4
    iput p1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    sget-boolean v6, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "HtcMiniSettings"

    const-string v7, "dismiss old dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6, v10}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    iput-boolean v10, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRestoreBluetoothState:Z

    sget-boolean v6, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "HtcMiniSettings"

    const-string v7, "auto turn on bt!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mStartTime:J

    iget-boolean v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAutoConnect:Z

    if-nez v6, :cond_1

    iput v12, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    goto :goto_0

    :cond_7
    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-ne v6, v10, :cond_d

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    if-lt v2, v11, :cond_a

    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c0af6

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    const/4 v6, 0x3

    iput v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    goto/16 :goto_0

    :cond_a
    if-eqz v1, :cond_b

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b
    invoke-direct {p0, v11}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-boolean v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRestoreBluetoothState:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    const-wide/16 v3, 0x1b58

    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/android/settings/bluetooth/HtcMiniSettings;->connectToNext(J)V

    goto/16 :goto_0

    :cond_c
    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_d
    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-ne v6, v11, :cond_e

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->acquireWakeLock()V

    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c0af4

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/android/settings/bluetooth/HtcMiniSettings$5;

    invoke-direct {v8, p0}, Lcom/android/settings/bluetooth/HtcMiniSettings$5;-><init>(Lcom/android/settings/bluetooth/HtcMiniSettings;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/bluetooth/HtcMiniSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/bluetooth/HtcMiniSettings$4;-><init>(Lcom/android/settings/bluetooth/HtcMiniSettings;)V

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const v7, 0x102000d

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_e
    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-ne v6, v12, :cond_f

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto/16 :goto_0

    :cond_f
    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v6}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_10
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v6}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_11
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c0af5

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    sget-object v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcMiniSettings"

    const-string v1, "release full wakelock!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private startScanning()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    goto :goto_0
.end method

.method private updateContent(IZ)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Lcom/htc/preference/HtcPreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void

    :pswitch_0
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mUpdatingContent:Z

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcPreferenceGroup;->setOrderingAsAdded(Z)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->clear()V

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    if-nez v5, :cond_0

    new-instance v5, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    const v6, 0x7f0c0af3

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    if-nez v5, :cond_1

    new-instance v5, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    const v6, 0x7f0c0af2

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    const-string v6, "bt_scan"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onScanningStateChanged(Z)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    if-nez v5, :cond_2

    new-instance v5, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    :goto_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    const v6, 0x7f0c0a95

    sget-object v7, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/bluetooth/HtcMiniSettings;->addDeviceCategory(Lcom/htc/preference/HtcPreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v3

    iget v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-nez v5, :cond_9

    new-instance v5, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const v6, 0x7f0c0a93

    invoke-virtual {v5, v6}, Lcom/android/settings/ProgressCategory;->replaceEmptyTextRes(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const v6, 0x7f0c0a94

    sget-object v7, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/bluetooth/HtcMiniSettings;->addDeviceCategory(Lcom/htc/preference/HtcPreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFragmentStarted:Z

    if-eqz v5, :cond_5

    iput-boolean v9, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFragmentStarted:Z

    :cond_5
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v2

    iput-boolean v8, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v2, :cond_6

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    iput-boolean v9, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategoryIsPresent:Z

    :cond_6
    if-nez v3, :cond_7

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    if-ne p2, v8, :cond_a

    iput-boolean v9, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActivityStarted:Z

    iget-boolean v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAutoConnect:Z

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->startScanning()V

    :cond_7
    :goto_5
    iget v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-nez v5, :cond_8

    invoke-direct {p0, v8}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    :cond_8
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mUpdatingContent:Z

    goto/16 :goto_1

    :cond_9
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    goto :goto_4

    :cond_a
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_5

    :pswitch_1
    const v1, 0x7f0c0a90

    goto/16 :goto_0

    :pswitch_2
    const v1, 0x7f0c0a91

    goto/16 :goto_0

    :pswitch_3
    const v1, 0x7f0c0a8f

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 5

    const v4, 0x7f06000c

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v4, v2, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    :cond_0
    new-instance v1, Lcom/htc/widget/ActionBarText;

    invoke-direct {v1, v2}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0aee

    invoke-virtual {v1, v4}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v4, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActivityStarted:Z

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAutoConnect:Z

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActivityStarted:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "auto_connect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAutoConnect:Z

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/HtcMiniSettings;->isHelpAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mHelpAvailable:Z

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->updateContent(IZ)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mHelpAvailable:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const v1, 0x7f0c00f0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    :cond_0
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHtcMini()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)V

    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mUpdatingContent:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcMiniSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "one HTC Mini found! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcMiniSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProcessingCachedDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    const-string v0, "HtcMiniSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start pairing to mini :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    :cond_2
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Lcom/htc/preference/HtcPreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/HtcMiniSettings;->updateContent(IZ)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-eq v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHtcMini()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    goto :goto_0
.end method

.method public onDeviceNameChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.showme"

    const-string v4, "com.htc.showme.ui.Search"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.SUBJECT"

    sget-object v3, Lcom/android/settings/bluetooth/HtcMiniSettings;->HTC_MINI_SUBJECT:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategoryIsPresent:Z

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "bt_scan"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->startScanning()V

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    if-ne v2, p2, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.bluetooth.htcmini.HtcMiniMainActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/settings/bluetooth/HtcMiniSettings;->updateContent(IZ)V

    :cond_0
    iput v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    instance-of v4, v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "HtcMiniSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connected mini count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    iget v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    if-nez p1, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    :cond_1
    iget v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mStartTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->startScanning()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    const/16 v3, 0x8

    goto :goto_1

    :cond_5
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    goto :goto_2
.end method

.method public onShowRetryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcMiniSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show retry dialog for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v0, p1, v1, p2}, Lcom/android/settings/bluetooth/Utils;->showRetryDialog(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/htc/widget/HtcAlertDialog;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method
