.class public final Lcom/android/settings/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalBluetoothManager"

.field private static sInstance:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# instance fields
.field private final mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private final mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

.field private mForegroundActivity:Landroid/content/Context;

.field private final mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V
    .locals 6
    .parameter "adapter"
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 78
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 80
    new-instance v0, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 81
    new-instance v0, Lcom/android/settings/bluetooth/HtcTagManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p2, v1}, Lcom/android/settings/bluetooth/HtcTagManager;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    .line 82
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    .line 84
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v4, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    iget-object v5, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/HtcTagManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 86
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 4
    .parameter "context"

    .prologue
    .line 55
    const-class v3, Lcom/android/settings/bluetooth/LocalBluetoothManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_1

    .line 56
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 57
    .local v0, adapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    if-nez v0, :cond_0

    .line 58
    const/4 v2, 0x0

    .line 65
    .end local v0           #adapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :goto_0
    monitor-exit v3

    return-object v2

    .line 61
    .restart local v0       #adapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    .local v1, appContext:Landroid/content/Context;
    new-instance v2, Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-direct {v2, v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V

    sput-object v2, Lcom/android/settings/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 65
    .end local v0           #adapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .end local v1           #appContext:Landroid/content/Context;
    :cond_1
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDiscoverableEnabler()Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    return-object v0
.end method

.method public getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method public getForegroundActivity()Landroid/content/Context;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    return-object v0
.end method

.method getHtcTagManager()Lcom/android/settings/bluetooth/HtcTagManager;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mHtcTagManager:Lcom/android/settings/bluetooth/HtcTagManager;

    return-object v0
.end method

.method public getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDiscoverableEnabler(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .parameter "discoverableEnabler"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 70
    return-void
.end method

.method declared-synchronized setForegroundActivity(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 106
    :try_start_0
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to non-null context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public turnOnBluetoothTethering()I
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    .line 118
    .local v0, state:I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings/bluetooth/BluetoothEventManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothEventManager;->setBluetoothEnableForTether(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->startBluetoothTethering()V

    goto :goto_0
.end method
