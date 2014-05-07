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

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    .line 32
    sput-object v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->me:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    .line 36
    sput-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothAdapterState:Z

    .line 38
    sput-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothTetherState:Z

    .line 40
    sput-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothStateBackup:Z

    .line 243
    sput-object v2, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mTimeoutHandler:Landroid/os/Handler;

    .line 244
    sput-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mDeviceDiscoverable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 268
    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$1;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mClearDiscoverableTimeout:Ljava/lang/Runnable;

    .line 285
    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils$2;-><init>(Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->clearDiscoverableTimeout()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private clearDiscoverableTimeout()V
    .locals 4

    .prologue
    .line 276
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mDeviceDiscoverable:Z

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setBluetoothDiscoverableEnable(Z)V

    .line 279
    :cond_0
    monitor-enter p0

    .line 280
    :try_start_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mClearDiscoverableTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mClearDiscoverableTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    monitor-exit p0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->me:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->me:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    .line 54
    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->me:Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;

    return-object v0
.end method

.method private setBluetoothDiscoverableEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 259
    if-eqz p1, :cond_1

    .line 260
    const/16 v0, 0x78

    .line 261
    .local v0, timeout:I
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    .line 262
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

    .line 266
    .end local v0           #timeout:I
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public BackupBluetoothState()V
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->IsBluetoothOn()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothAdapterState:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->IsBluetoothTetherOn()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothTetherState:Z

    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothStateBackup:Z

    .line 132
    return-void
.end method

.method public BluetoothTetheredCount()I
    .locals 5

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, bluetoothTethered:I
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 230
    .local v0, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 232
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

    .line 236
    :cond_0
    :goto_0
    return v1

    .line 235
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

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, deviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_0
    return-object v0
.end method

.method public Init()V
    .locals 4

    .prologue
    .line 65
    const-string v0, "HtcBluetoothTetherUtils"

    const-string v1, "Init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 68
    :cond_0
    return-void
.end method

.method public IsBluetoothOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 174
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public IsBluetoothTetherOn()Z
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, bState:Z
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 204
    .local v1, pan:Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 207
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Release()V
    .locals 5

    .prologue
    .line 71
    const-string v3, "HtcBluetoothTetherUtils"

    const-string v4, "Release"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 73
    .local v1, pan:Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_1

    .line 75
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 76
    .local v0, mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 77
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    const/4 v1, 0x0

    .line 83
    .end local v0           #mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, t:Ljava/lang/Throwable;
    sget-boolean v3, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "HtcBluetoothTetherUtils"

    const-string v4, "Error cleaning up PAN proxy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public RestoreBluetoothState()V
    .locals 3

    .prologue
    .line 135
    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothStateBackup:Z

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothTetheredCount()I

    move-result v0

    .line 137
    .local v0, TetheredCount:I
    if-gtz v0, :cond_2

    .line 139
    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcBluetoothTetherUtils"

    const-string v2, "No other device connected, restore bluetooth state."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothTetherState:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetoothTethering(Z)Z

    .line 141
    sget-boolean v1, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothAdapterState:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->turnOnBluetooth(Z)Z

    .line 146
    .end local v0           #TetheredCount:I
    :cond_1
    :goto_0
    return-void

    .line 143
    .restart local v0       #TetheredCount:I
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
    .parameter "newName"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, deviceName:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 168
    .end local v0           #deviceName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public SetContext(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    const-string v0, "HtcBluetoothTetherUtils"

    const-string v1, "SetContext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-object p1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 62
    return-void
.end method

.method public ShowAirplaneWarningDialog(ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "bShow"
    .parameter "mClick"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    if-eqz p1, :cond_3

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 92
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "HtcBluetoothTetherUtils"

    const-string v1, "dismiss old dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
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

    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mAirplaneWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
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
    .parameter "callback"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 121
    :cond_0
    return-void
.end method

.method public registerModeChangeReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V
    .locals 2
    .parameter "ModeChangeReceiver"
    .parameter "FilterString"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method public setDiscoverableEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    .line 247
    if-eqz p1, :cond_1

    .line 248
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mTimeoutHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mTimeoutHandler:Landroid/os/Handler;

    .line 250
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mDeviceDiscoverable:Z

    .line 251
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->clearDiscoverableTimeout()V

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_1
    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mDeviceDiscoverable:Z

    .line 254
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->setBluetoothDiscoverableEnable(Z)V

    goto :goto_0
.end method

.method public turnOnBluetooth(Z)Z
    .locals 3
    .parameter "bFlag"

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->blockBt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0a8a

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 198
    :goto_0
    return v0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-static {v1, v2}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0d32

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 189
    if-eqz p1, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 198
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    goto :goto_1
.end method

.method public turnOnBluetoothTethering(Z)Z
    .locals 3
    .parameter "bTetherFlag"

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_0

    .line 223
    :goto_0
    return v1

    .line 214
    :cond_0
    if-eqz p1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->turnOnBluetoothTethering()I

    .line 223
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->BluetoothTetheredCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 219
    .local v0, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto :goto_1
.end method

.method public unregisterBluetoothCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 126
    :cond_0
    return-void
.end method

.method public unregisterModeChangeReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "ModeChangeReceiver"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothTetherUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    return-void
.end method
