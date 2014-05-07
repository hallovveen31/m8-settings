.class public final Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
.super Ljava/lang/Object;
.source "LocalBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EXTEND_SCAN_TIME:J = 0x2bf20L

.field private static final SCAN_EXPIRATION_MS:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothAdapter"

.field private static sInstance:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExtendScanTime:J

.field private mLastScan:J

.field private mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/content/Context;)V
    .locals 2
    .parameter "adapter"
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    .line 67
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mExtendScanTime:J

    .line 88
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 89
    iput-object p2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 4
    .parameter "context"

    .prologue
    .line 103
    const-class v2, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 105
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 106
    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 110
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method cancelDiscovery()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 129
    return-void
.end method

.method disable()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method enable()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getBluetoothState()I
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    .line 246
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getBondedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, btname:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 157
    :goto_0
    return-object v1

    .line 155
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "profile"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 142
    return-void
.end method

.method getScanMode()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method getState()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method isConnected()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDiscovering()Z
    .locals 4

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    .line 174
    .local v0, isDiscovering:Z
    const-string v1, "LocalBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is discoverying? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v0
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isExtendScanExpired()Z
    .locals 6

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mExtendScanTime:J

    const-wide/32 v4, 0x2bf20

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 276
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 280
    .local v0, success:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 281
    if-eqz p1, :cond_1

    const/16 v1, 0xb

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 292
    :goto_2
    return-void

    .line 276
    .end local v0           #success:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    goto :goto_0

    .line 281
    .restart local v0       #success:Z
    :cond_1
    const/16 v1, 0xd

    goto :goto_1

    .line 285
    :cond_2
    sget-boolean v1, Lcom/android/settings/bluetooth/Utils;->V:Z

    if-eqz v1, :cond_3

    .line 286
    const-string v1, "LocalBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothEnabled call, manager didn\'t return success for enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    goto :goto_2
.end method

.method declared-synchronized setBluetoothStateInt(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 252
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->setBluetoothStateOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 259
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->setBluetoothStateOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDiscoverableTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 188
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 191
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_name"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 193
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 194
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    monitor-enter v3

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;

    .line 196
    .local v0, callback:Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;->onDeviceNameChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v0           #callback:Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    return-void
.end method

.method setProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 94
    return-void
.end method

.method setScanMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 203
    return-void
.end method

.method setScanMode(II)Z
    .locals 1
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method

.method public startExtendScan()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    .line 74
    iget-wide v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    iput-wide v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mExtendScanTime:J

    .line 75
    const-string v0, "LocalBluetoothAdapter"

    const-string v1, "extend scanning started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    return-void
.end method

.method startScanning(Z)Z
    .locals 6
    .parameter "force"

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    if-nez p1, :cond_2

    .line 215
    iget-wide v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v0

    .line 221
    .local v0, a2dp:Lcom/android/settings/bluetooth/A2dpProfile;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/A2dpProfile;->isA2dpPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    .end local v0           #a2dp:Lcom/android/settings/bluetooth/A2dpProfile;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    .line 228
    const-string v1, "LocalBluetoothAdapter"

    const-string v2, "start discovery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v1, 0x1

    goto :goto_0
.end method

.method stopScanning()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 239
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mExtendScanTime:J

    .line 240
    sget-boolean v0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "LocalBluetoothAdapter"

    const-string v1, "stopScanning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    return-void
.end method

.method syncBluetoothState()Z
    .locals 2

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 268
    .local v0, currentState:I
    iget v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mState:I

    if-eq v0, v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 270
    const/4 v1, 0x1

    .line 272
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
