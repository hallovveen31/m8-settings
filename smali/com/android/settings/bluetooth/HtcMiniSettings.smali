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

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    .line 121
    const-string v0, "accessories_htc_mini"

    sput-object v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->HTC_MINI_SUBJECT:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryConnectTimes:I

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mUiHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    .line 154
    new-instance v0, Lcom/android/settings/bluetooth/HtcMiniSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcMiniSettings$1;-><init>(Lcom/android/settings/bluetooth/HtcMiniSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 504
    new-instance v0, Lcom/android/settings/bluetooth/HtcMiniSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcMiniSettings$2;-><init>(Lcom/android/settings/bluetooth/HtcMiniSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/HtcMiniSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/settings/bluetooth/HtcMiniSettings;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/settings/bluetooth/HtcMiniSettings;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/HtcMiniSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/HtcMiniSettings;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/bluetooth/HtcMiniSettings;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/HtcMiniSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/HtcMiniSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryConnectTimes:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/bluetooth/HtcMiniSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryConnectTimes:I

    return p1
.end method

.method static synthetic access$510(Lcom/android/settings/bluetooth/HtcMiniSettings;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryConnectTimes:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryConnectTimes:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/HtcMiniSettings;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/HtcMiniSettings;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/HtcMiniSettings;->connectToNext(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/bluetooth/HtcMiniSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->isRestrictedAndNotPinProtected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/bluetooth/HtcMiniSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->startScanning()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    .prologue
    .line 128
    sget-object v1, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 129
    sget-boolean v1, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcMiniSettings"

    const-string v2, "acquire full wakelock 180000"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 131
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x2000001a

    const-string v2, "HtcMiniAutoConnect_60"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 133
    sget-object v1, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 134
    sget-object v1, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 136
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1
    return-void
.end method

.method private addDeviceCategory(Lcom/htc/preference/HtcPreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 353
    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcPreferenceGroup;->setTitle(I)V

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 355
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/HtcMiniSettings;->setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/HtcMiniSettings;->setDeviceListGroup(Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->addCachedDevices()V

    .line 358
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    .line 359
    return-void
.end method

.method private connectToNext(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 547
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

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/HtcMiniSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/HtcMiniSettings$3;-><init>(Lcom/android/settings/bluetooth/HtcMiniSettings;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    return-void
.end method

.method private isHelpAvailable(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 213
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.htc.showme"

    const-string v6, "com.htc.showme.ui.Search"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 215
    const-string v4, "android.intent.extra.SUBJECT"

    sget-object v5, Lcom/android/settings/bluetooth/HtcMiniSettings;->HTC_MINI_SUBJECT:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 219
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 220
    const-string v4, "HtcMiniSettings"

    const-string v5, "Tips & Help application exists."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return v3

    .line 224
    :cond_0
    const-string v3, "HtcMiniSettings"

    const-string v4, "Tips & Help application does not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onHandleStateChanged(I)V
    .locals 14
    .parameter "state"

    .prologue
    const v13, 0x7f0c0aee

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 583
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

    .line 584
    :cond_0
    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-ne v6, p1, :cond_2

    .line 664
    :cond_1
    :goto_0
    return-void

    .line 585
    :cond_2
    if-eq p1, v12, :cond_3

    const/4 v6, 0x4

    if-eq p1, v6, :cond_3

    const/4 v6, 0x3

    if-ne p1, v6, :cond_4

    .line 586
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->releaseWakeLock()V

    .line 588
    :cond_4
    iput p1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    .line 589
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 590
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 591
    sget-boolean v6, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "HtcMiniSettings"

    const-string v7, "dismiss old dialog"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_5
    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-nez v6, :cond_7

    .line 595
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_6

    .line 597
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6, v10}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 598
    iput-boolean v10, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRestoreBluetoothState:Z

    .line 599
    sget-boolean v6, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "HtcMiniSettings"

    const-string v7, "auto turn on bt!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mStartTime:J

    .line 602
    iget-boolean v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAutoConnect:Z

    if-nez v6, :cond_1

    iput v12, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    goto :goto_0

    .line 603
    :cond_7
    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-ne v6, v10, :cond_d

    .line 604
    const/4 v2, 0x0

    .line 605
    .local v2, count:I
    const/4 v1, 0x0

    .line 606
    .local v1, connectedHtcMini:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 607
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 608
    move-object v1, v0

    .line 609
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 612
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_9
    if-lt v2, v11, :cond_a

    .line 613
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

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

    .line 618
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 619
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 620
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    goto/16 :goto_0

    .line 623
    :cond_a
    if-eqz v1, :cond_b

    .line 624
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 626
    :cond_b
    invoke-direct {p0, v11}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    .line 627
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 628
    iget-boolean v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRestoreBluetoothState:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    const-wide/16 v3, 0x1b58

    .line 629
    .local v3, delay:J
    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/android/settings/bluetooth/HtcMiniSettings;->connectToNext(J)V

    goto/16 :goto_0

    .line 628
    .end local v3           #delay:J
    :cond_c
    const-wide/16 v3, 0x0

    goto :goto_2

    .line 630
    .end local v1           #connectedHtcMini:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v2           #count:I
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_d
    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-ne v6, v11, :cond_e

    .line 631
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->acquireWakeLock()V

    .line 632
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

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

    .line 646
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 647
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 648
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    const v7, 0x102000d

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 649
    :cond_e
    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-ne v6, v12, :cond_f

    .line 650
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto/16 :goto_0

    .line 651
    :cond_f
    iget v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 652
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

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->getPreferenceCount()I

    move-result v6

    if-gtz v6, :cond_1

    .line 656
    :cond_11
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

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

    .line 661
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 662
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcMiniSettings"

    const-string v1, "release full wakelock!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 143
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 144
    return-void
.end method

.method private startScanning()V
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    goto :goto_0
.end method

.method private updateContent(IZ)V
    .locals 10
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    .line 363
    .local v4, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const/4 v1, 0x0

    .line 365
    .local v1, messageId:I
    packed-switch p1, :pswitch_data_0

    .line 461
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/HtcMiniSettings;->setDeviceListGroup(Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->removeAllDevices()V

    .line 463
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 464
    :goto_1
    return-void

    .line 367
    :pswitch_0
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mUpdatingContent:Z

    .line 368
    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 369
    invoke-virtual {v4, v8}, Lcom/htc/preference/HtcPreferenceScreen;->setOrderingAsAdded(Z)V

    .line 370
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->clear()V

    .line 372
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    if-nez v5, :cond_0

    .line 373
    new-instance v5, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    .line 374
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    const v6, 0x7f0c0af3

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 376
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 378
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    if-nez v5, :cond_1

    .line 379
    new-instance v5, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    .line 380
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    const v6, 0x7f0c0af2

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 381
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    const-string v6, "bt_scan"

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    .line 383
    :cond_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 384
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onScanningStateChanged(Z)V

    .line 387
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    if-nez v5, :cond_2

    .line 388
    new-instance v5, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    .line 392
    :goto_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    const v6, 0x7f0c0a95

    sget-object v7, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/bluetooth/HtcMiniSettings;->addDeviceCategory(Lcom/htc/preference/HtcPreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 395
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 396
    .local v3, numberOfPairedDevices:I
    iget v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-nez v5, :cond_3

    .line 398
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 399
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 400
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 401
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedHtcMini:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 390
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    .end local v3           #numberOfPairedDevices:I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v5}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    goto :goto_2

    .line 406
    .restart local v3       #numberOfPairedDevices:I
    :cond_3
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-nez v5, :cond_9

    .line 407
    new-instance v5, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    .line 408
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const v6, 0x7f0c0a93

    invoke-virtual {v5, v6}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->replaceEmptyTextRes(I)V

    .line 412
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->isRestrictedAndNotPinProtected()Z

    move-result v5

    if-nez v5, :cond_4

    .line 413
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const v6, 0x7f0c0a94

    sget-object v7, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/bluetooth/HtcMiniSettings;->addDeviceCategory(Lcom/htc/preference/HtcPreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 417
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mFragmentStarted:Z

    if-eqz v5, :cond_5

    .line 418
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mFragmentStarted:Z

    .line 420
    :cond_5
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->getPreferenceCount()I

    move-result v2

    .line 421
    .local v2, numberOfAvailableDevices:I
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 423
    if-nez v2, :cond_6

    .line 424
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 425
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 428
    :cond_6
    if-nez v3, :cond_7

    .line 429
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 430
    if-ne p2, v8, :cond_a

    .line 431
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActivityStarted:Z

    .line 432
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAutoConnect:Z

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->startScanning()V

    .line 440
    :cond_7
    :goto_5
    iget v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    if-nez v5, :cond_8

    .line 442
    invoke-direct {p0, v8}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    .line 445
    :cond_8
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mUpdatingContent:Z

    goto/16 :goto_1

    .line 410
    .end local v2           #numberOfAvailableDevices:I
    :cond_9
    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->removeAll()V

    goto :goto_4

    .line 434
    .restart local v2       #numberOfAvailableDevices:I
    :cond_a
    iget-boolean v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v5, :cond_7

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_5

    .line 449
    .end local v2           #numberOfAvailableDevices:I
    .end local v3           #numberOfPairedDevices:I
    :pswitch_1
    const v1, 0x7f0c0a90

    .line 450
    goto/16 :goto_0

    .line 453
    :pswitch_2
    const v1, 0x7f0c0a91

    .line 454
    goto/16 :goto_0

    .line 457
    :pswitch_3
    const v1, 0x7f0c0a8f

    goto/16 :goto_0

    .line 365
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

    .prologue
    .line 230
    const v4, 0x7f06000c

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/HtcMiniSettings;->addPreferencesFromResource(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 233
    .local v2, activity:Landroid/app/Activity;
    instance-of v4, v2, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 234
    check-cast v3, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 235
    .local v3, preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    invoke-virtual {v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    .line 236
    .local v0, actionBarExt:Lcom/htc/widget/ActionBarExt;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 237
    :cond_0
    new-instance v1, Lcom/htc/widget/ActionBarText;

    invoke-direct {v1, v2}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 238
    .local v1, actionBarText:Lcom/htc/widget/ActionBarText;
    const v4, 0x7f0c0aee

    invoke-virtual {v1, v4}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 239
    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v4, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 242
    .end local v0           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v1           #actionBarText:Lcom/htc/widget/ActionBarText;
    .end local v3           #preferenceActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/HtcMiniSettings;->setHasOptionsMenu(Z)V

    .line 243
    return-void
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 529
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 530
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 532
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 198
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActivityStarted:Z

    .line 199
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAutoConnect:Z

    .line 200
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActivityStarted:Z

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 202
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "auto_connect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAutoConnect:Z

    .line 204
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mEmptyView:Landroid/widget/TextView;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setEmptyView(Landroid/view/View;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/HtcMiniSettings;->isHelpAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mHelpAvailable:Z

    .line 209
    return-void

    :cond_1
    move v1, v2

    .line 198
    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 468
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 469
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->updateContent(IZ)V

    .line 470
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mHelpAvailable:Z

    if-eqz v0, :cond_2

    .line 316
    const/4 v0, 0x1

    const v1, 0x7f0c00f0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 321
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 303
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 307
    :cond_0
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)V
    .locals 3
    .parameter "cachedDevice"
    .parameter "displayOnly"

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHtcMini()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;Z)V

    .line 248
    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mUpdatingContent:Z

    if-nez v0, :cond_2

    .line 249
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

    .line 250
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

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 253
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

    .line 254
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 255
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 259
    :cond_2
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->setDeviceListGroup(Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->removeAllDevices()V

    .line 493
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/HtcMiniSettings;->updateContent(IZ)V

    .line 495
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-eq v0, p1, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHtcMini()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    goto :goto_0
.end method

.method public onDeviceNameChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 152
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "btPreference"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 348
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 349
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, iHelp:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.htc.showme"

    const-string v4, "com.htc.showme.ui.Search"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 330
    const-string v2, "android.intent.extra.SUBJECT"

    sget-object v3, Lcom/android/settings/bluetooth/HtcMiniSettings;->HTC_MINI_SUBJECT:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->startActivity(Landroid/content/Intent;)V

    .line 334
    .end local v0           #iHelp:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 286
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->removeAll()V

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 298
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 565
    const-string v2, "bt_scan"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->startScanning()V

    .line 579
    :goto_0
    return v1

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mSetupPreference:Lcom/htc/preference/HtcPreference;

    if-ne v2, p2, :cond_1

    .line 571
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 572
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.bluetooth.htcmini.HtcMiniMainActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 574
    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 579
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 264
    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v4, :cond_0

    .line 265
    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V

    .line 266
    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/settings/bluetooth/HtcMiniSettings;->updateContent(IZ)V

    .line 268
    :cond_0
    iput v3, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    .line 269
    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    if-eqz v4, :cond_2

    .line 270
    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 271
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 272
    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4, v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 273
    .local v2, pref:Lcom/htc/preference/HtcPreference;
    instance-of v4, v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v4, :cond_1

    .line 274
    check-cast v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local v2           #pref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mConnectedHtcMiniCount:I

    .line 271
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0           #count:I
    .end local v1           #i:I
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

    .line 279
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

    .line 280
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 6
    .parameter "started"

    .prologue
    const/4 v3, 0x0

    .line 474
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 475
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mScanPreference:Lcom/htc/preference/HtcPreference;

    if-nez p1, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 476
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    .line 478
    :cond_1
    iget v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-nez p1, :cond_2

    .line 479
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v2, :cond_2

    .line 480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 481
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mStartTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 482
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->startScanning()V

    .line 488
    .end local v0           #now:J
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v2, v3

    .line 475
    goto :goto_0

    .line 476
    :cond_4
    const/16 v3, 0x8

    goto :goto_1

    .line 484
    .restart local v0       #now:J
    :cond_5
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/HtcMiniSettings;->onHandleStateChanged(I)V

    goto :goto_2
.end method

.method public onShowRetryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 3
    .parameter "cachedDevice"
    .parameter "action"

    .prologue
    .line 539
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

    .line 540
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

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mProcessingCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_3

    .line 544
    :cond_2
    :goto_0
    return-void

    .line 542
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcMiniSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v0, p1, v1, p2}, Lcom/android/settings/bluetooth/Utils;->showRetryDialog(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/htc/widget/HtcAlertDialog;I)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcMiniSettings;->mRetryDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method
