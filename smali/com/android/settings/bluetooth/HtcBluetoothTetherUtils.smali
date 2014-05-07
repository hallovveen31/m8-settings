.class public Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;
.super Ljava/lang/Object;
.source "HtcBluetoothTetherUtils.java"


# static fields
.field private static BluetoothAdapterState:Z = false

.field private static BluetoothStateBackup:Z = false

.field private static BluetoothTetherState:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DISCOVERABLE_TIMEOUT_FIVE_MINUTES:I = 0x12c

.field private static final DISCOVERABLE_TIMEOUT_NEVER:I = 0x0

.field private static final DISCOVERABLE_TIMEOUT_ONE_HOUR:I = 0xe10

.field private static final DISCOVERABLE_TIMEOUT_TWO_MINUTES:I = 0x78

.field public static final EXIT_WIZARD_RESULTCODE:I = 0x2ee5

.field private static final TAG:Ljava/lang/String; = "HtcBluetoothTetherUtils"

.field private static mDeviceDiscoverable:Z

.field private static mTimeoutHandler:Landroid/os/Handler;

.field private static me:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;


# instance fields
.field private mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

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

.field private final mClearDiscoverableTimeout:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    sput-object v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->me:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    sput-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothAdapterState:Z

    sput-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothTetherState:Z

    sput-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothStateBackup:Z

    sput-object v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mTimeoutHandler:Landroid/os/Handler;

    sput-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mDeviceDiscoverable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$1;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mClearDiscoverableTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$2;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->clearDiscoverableTimeout()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private clearDiscoverableTimeout()V
    .locals 4

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mDeviceDiscoverable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setBluetoothDiscoverableEnable(Z)V

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mClearDiscoverableTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mClearDiscoverableTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;
    .locals 1

    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->me:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->me:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->me:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    return-object v0
.end method

.method private setBluetoothDiscoverableEnable(Z)V
    .locals 4

    if-eqz p1, :cond_1

    const/16 v0, 0x78

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcBluetoothTetherUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnabled(): enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public BackupBluetoothState()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->IsBluetoothOn()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothAdapterState:Z

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->IsBluetoothTetherOn()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothTetherState:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothStateBackup:Z

    return-void
.end method

.method public BluetoothTetheredCount()I
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sget-boolean v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcBluetoothTetherUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bluetoothTethered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-boolean v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcBluetoothTetherUtils"

    const-string v3, "bluetoothPan is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetBluetoothName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public Init()V
    .locals 4

    const-string v0, "HtcBluetoothTetherUtils"

    const-string v1, "Init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    :cond_0
    return-void
.end method

.method public IsBluetoothOn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public IsBluetoothTetherOn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Release()V
    .locals 5

    const-string v3, "HtcBluetoothTetherUtils"

    const-string v4, "Release"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "HtcBluetoothTetherUtils"

    const-string v4, "Error cleaning up PAN proxy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public RestoreBluetoothState()V
    .locals 3

    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothStateBackup:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothTetheredCount()I

    move-result v0

    if-gtz v0, :cond_2

    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcBluetoothTetherUtils"

    const-string v2, "No other device connected, restore bluetooth state."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothTetherState:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothAdapterState:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetooth(Z)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcBluetoothTetherUtils"

    const-string v2, "Some device connected, stop restore bluetooth state."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetBluetoothName(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public SetContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "HtcBluetoothTetherUtils"

    const-string v1, "SetContext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-void
.end method

.method public ShowAirplaneWarningDialog(ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "HtcBluetoothTetherUtils"

    const-string v1, "dismiss old dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00b9

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0d32

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public registerBluetoothCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    :cond_0
    return-void
.end method

.method public registerModeChangeReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setDiscoverableEnable(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mTimeoutHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mTimeoutHandler:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mDeviceDiscoverable:Z

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->clearDiscoverableTimeout()V

    :goto_0
    return-void

    :cond_1
    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mDeviceDiscoverable:Z

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setBluetoothDiscoverableEnable(Z)V

    goto :goto_0
.end method

.method public turnOnBluetooth(Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->blockBt()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0a8a

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0d32

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    goto :goto_1
.end method

.method public turnOnBluetoothTethering(Z)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->turnOnBluetoothTethering()I

    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothTetheredCount()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto :goto_1
.end method

.method public unregisterBluetoothCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterModeChangeReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
