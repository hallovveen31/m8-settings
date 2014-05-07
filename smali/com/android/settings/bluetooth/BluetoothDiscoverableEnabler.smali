.class final Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field static final DEFAULT_DISCOVERABLE_TIMEOUT:I = 0x78

.field private static final DISCOVERABLE_TIMEOUT_FIVE_MINUTES:I = 0x12c

.field static final DISCOVERABLE_TIMEOUT_NEVER:I = 0x0

.field private static final DISCOVERABLE_TIMEOUT_ONE_HOUR:I = 0xe10

.field private static final DISCOVERABLE_TIMEOUT_TWO_MINUTES:I = 0x78

.field private static final KEY_DISCOVERABLE_TIMEOUT:Ljava/lang/String; = "bt_discoverable_timeout"

.field private static final SYSTEM_PROPERTY_DISCOVERABLE_TIMEOUT:Ljava/lang/String; = "debug.bt.discoverable_time"

.field private static final TAG:Ljava/lang/String; = "BluetoothDiscoverableEnabler"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_FIVE_MINUTES:Ljava/lang/String; = "fivemin"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_NEVER:Ljava/lang/String; = "never"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_ONE_HOUR:Ljava/lang/String; = "onehour"

.field private static final VALUE_DISCOVERABLE_TIMEOUT_TWO_MINUTES:Ljava/lang/String; = "twomin"


# instance fields
.field private final mClearDiscoverableTimeout:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDeviceDiscoverable:Z

.field private final mDiscoveryPreference:Lcom/htc/preference/HtcPreference;

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/htc/preference/HtcPreference;)V
    .locals 2
    .parameter "context"
    .parameter "adapter"
    .parameter "discoveryPreference"

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mDeviceDiscoverable:Z

    .line 389
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mClearDiscoverableTimeout:Ljava/lang/Runnable;

    .line 104
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutHandler:Landroid/os/Handler;

    .line 107
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 108
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Lcom/htc/preference/HtcPreference;

    .line 109
    invoke-virtual {p3}, Lcom/htc/preference/HtcPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 110
    invoke-virtual {p3, v1}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->clearDiscoverableTimeout()V

    return-void
.end method

.method private clearDiscoverableTimeout()V
    .locals 4

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mDeviceDiscoverable:Z

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setDiscoverableEnable(Z)V

    .line 400
    :cond_0
    monitor-enter p0

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mClearDiscoverableTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mClearDiscoverableTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    monitor-exit p0

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getDiscoverableTimeout()I
    .locals 1

    .prologue
    .line 287
    const/16 v0, 0x78

    return v0
.end method

.method private setDiscoverableEnable(Z)V
    .locals 9
    .parameter "enable"

    .prologue
    .line 190
    if-eqz p1, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v2

    .line 192
    .local v2, timeout:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long v0, v3, v5

    .line 193
    .local v0, endTimestamp:J
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 195
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    .line 198
    const-string v3, "BluetoothDiscoverableEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnabled(): enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "timeout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-lez v2, :cond_0

    .line 201
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    .line 207
    .end local v0           #endTimestamp:J
    .end local v2           #timeout:I
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 205
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothDiscoverableTimeoutReceiver;->cancelDiscoverableAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setSummaryDiscoverableAlways()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Lcom/htc/preference/HtcPreference;

    const v1, 0x7f0c08ff

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 387
    return-void
.end method


# virtual methods
.method public StartDiscoverable()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "BluetoothDiscoverableEnabler"

    const-string v1, "StartDiscoverable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mDeviceDiscoverable:Z

    .line 166
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->clearDiscoverableTimeout()V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setSummaryDiscoverableAlways()V

    goto :goto_0
.end method

.method public StopDiscoverable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    const-string v0, "BluetoothDiscoverableEnabler"

    const-string v1, "StopDiscoverable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mDeviceDiscoverable:Z

    .line 176
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setDiscoverableEnable(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mClearDiscoverableTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method getDiscoverableTimeoutIndex()I
    .locals 2

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    .line 315
    .local v0, timeout:I
    sparse-switch v0, :sswitch_data_0

    .line 318
    const/4 v1, 0x0

    .line 327
    :goto_0
    return v1

    .line 321
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 324
    :sswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 327
    :sswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 315
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x12c -> :sswitch_0
        0xe10 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 150
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mDeviceDiscoverable:Z

    .line 151
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setDiscoverableEnable(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mClearDiscoverableTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method setDiscoverableTimeout(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 284
    return-void
.end method

.method setNumberOfPairedDevices(I)V
    .locals 0
    .parameter "pairedDevices"

    .prologue
    .line 336
    return-void
.end method
