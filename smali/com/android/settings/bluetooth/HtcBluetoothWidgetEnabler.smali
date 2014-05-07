.class public Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;
.super Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.source "HtcBluetoothWidgetEnabler.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothCallback;
.implements Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
        "<",
        "Lcom/android/settings/bluetooth/HtcBluetoothState;",
        ">;",
        "Lcom/android/settings/bluetooth/BluetoothCallback;",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEnableAutoTestLog:Z

.field private mIsConnected:Z

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    .line 56
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mEnableAutoTestLog:Z

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mIsConnected:Z

    .line 76
    return-void
.end method

.method private applyBluetoothPolicy()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 309
    const/4 v4, 0x0

    .line 310
    .local v4, isOmadm:Z
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/framework/os/HtcServiceManager;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/HtcIfDevicePolicyManager;

    move-result-object v1

    .line 313
    .local v1, devPolicyMgr:Landroid/app/admin/HtcIfDevicePolicyManager;
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/app/admin/HtcIfDevicePolicyManager;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v6

    if-nez v6, :cond_2

    .line 315
    const/4 v4, 0x1

    .line 325
    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    .line 326
    const v5, 0x7f0c088f

    .line 327
    .local v5, summaryResId:I
    const/4 v0, 0x0

    .line 328
    .local v0, checked:Z
    const/4 v3, 0x0

    .line 329
    .local v3, enabled:Z
    const v6, 0x7f0c088f

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 337
    .end local v0           #checked:Z
    .end local v3           #enabled:Z
    .end local v5           #summaryResId:I
    :cond_1
    :goto_1
    return-void

    .line 317
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 318
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/framework/os/HtcServiceManager;->getDeviceManager3LM(Landroid/content/Context;)Lcom/htc/service/DeviceManager3LM;

    move-result-object v2

    .line 320
    .local v2, dm:Lcom/htc/service/DeviceManager3LM;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/service/DeviceManager3LM;->getBluetoothEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 321
    const/4 v4, 0x1

    goto :goto_0

    .line 331
    .end local v2           #dm:Lcom/htc/service/DeviceManager3LM;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->ensureLocalAdapter()V

    .line 332
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v6, :cond_1

    .line 333
    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(I)V

    goto :goto_1
.end method

.method private ensureLocalAdapter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 287
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 289
    invoke-virtual {p0, p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->setOnDialogCreatedListener(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;)V

    .line 292
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v3, :cond_2

    .line 293
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v3, :cond_2

    .line 295
    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v4, "Bluetooth is not supported"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const v2, 0x7f0c0d31

    .line 298
    .local v2, summaryResId:I
    const/4 v0, 0x0

    .line 299
    .local v0, checked:Z
    const/4 v1, 0x0

    .line 300
    .local v1, enabled:Z
    const v3, 0x7f0c0d31

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 303
    .end local v0           #checked:Z
    .end local v1           #enabled:Z
    .end local v2           #summaryResId:I
    :cond_2
    return-void
.end method

.method private getBlockDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 3

    .prologue
    .line 171
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00b9

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0a8a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 340
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 3
    .parameter "bluetoothState"

    .prologue
    .line 344
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventmanager callback :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(I)V

    .line 346
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "cachedDevice"

    .prologue
    .line 349
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 351
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "cachedDevice"

    .prologue
    .line 350
    return-void
.end method

.method public onDialogCreated(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "alertDialog"

    .prologue
    .line 276
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "onDialogCreated, showDialog"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 280
    return-void
.end method

.method protected onGetDefaultState()Lcom/android/settings/bluetooth/HtcBluetoothState;
    .locals 2

    .prologue
    .line 127
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onGetDefaultState"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_INIT:Lcom/android/settings/bluetooth/HtcBluetoothState;

    return-object v0
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onGetDefaultState()Lcom/android/settings/bluetooth/HtcBluetoothState;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleStateChangedInBackground(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 194
    invoke-static {p1}, Lcom/android/settings/bluetooth/HtcBluetoothState;->getBaseState(I)Lcom/android/settings/bluetooth/HtcBluetoothState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    .line 196
    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    sget-boolean v3, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleStateChangedInBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->log(Ljava/lang/String;)V

    .line 205
    :cond_0
    const v2, 0x7f0c0d31

    .line 206
    .local v2, summaryResId:I
    const/4 v0, 0x0

    .line 207
    .local v0, checked:Ljava/lang/Boolean;
    const/4 v1, 0x0

    .line 209
    .local v1, enabled:Ljava/lang/Boolean;
    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler$1;->$SwitchMap$com$android$settings$bluetooth$HtcBluetoothState:[I

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/HtcBluetoothState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 263
    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 265
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mEnableAutoTestLog:Z

    if-eqz v3, :cond_1

    .line 266
    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_ON:Lcom/android/settings/bluetooth/HtcBluetoothState;

    if-ne p1, v3, :cond_3

    .line 267
    const-string v3, "AutoTest"

    const-string v4, "[AutoProf](301) [OTHER][SETTINGS][Response Time (Bluetooth on)][START] turn Bluetooth on --- END"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    :goto_1
    return-void

    .line 211
    :pswitch_0
    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_INIT_OFF:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->ensureLocalAdapter()V

    .line 213
    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_SYNC:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    goto :goto_1

    .line 219
    :pswitch_1
    const v2, 0x7f0c106f

    .line 220
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 221
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 222
    goto :goto_0

    .line 226
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->applyBluetoothPolicy()V

    goto :goto_1

    .line 230
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v4, "bluetooth"

    invoke-static {v3, v4}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->setSwitchEnabled(Z)V

    goto :goto_1

    .line 235
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v4, "bluetooth"

    invoke-static {v3, v4}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 236
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 237
    const v2, 0x7f0c106f

    .line 238
    goto :goto_0

    .line 241
    :pswitch_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 242
    const/4 v0, 0x0

    .line 243
    const v2, 0x7f0c0512

    .line 244
    goto :goto_0

    .line 247
    :pswitch_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 248
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 249
    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_BT_WIFI_HINT:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mIsConnected:Z

    if-nez v3, :cond_2

    .line 251
    const v2, 0x7f0c0ac2

    goto :goto_0

    .line 253
    :cond_2
    const v2, 0x7f0c106e

    .line 255
    goto :goto_0

    .line 258
    :pswitch_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 259
    const/4 v0, 0x0

    .line 260
    const v2, 0x7f0c0513

    goto/16 :goto_0

    .line 268
    :cond_3
    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_OFF:Lcom/android/settings/bluetooth/HtcBluetoothState;

    if-ne p1, v3, :cond_1

    .line 269
    const-string v3, "AutoTest"

    const-string v4, "[AutoProf](301) [OTHER][SETTINGS][Response Time (Bluetooth off)][START] turn Bluetooth off --- END"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected bridge synthetic onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Lcom/android/settings/bluetooth/HtcBluetoothState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    return-void
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 191
    :cond_0
    return-void
.end method

.method protected onRebindViewInBackground()V
    .locals 2

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onRebindViewInBackground()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_SYNC:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    .line 139
    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, action:Ljava/lang/String;
    sget-boolean v4, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceiveInBackground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->log(Ljava/lang/String;)V

    .line 91
    :cond_0
    const-string v4, "com.htc.admin.ALLOW_BT_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_APPLY_POLICY:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_AIRPLANE_MODE_CHANGED:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    goto :goto_0

    .line 97
    :cond_3
    const-string v4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    const-string v4, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, newState:I
    const-string v4, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 100
    .local v2, oldState:I
    sget-boolean v4, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive CONNECTION_STATE_CHANGED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_4
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mIsConnected:Z

    .line 102
    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_APPLY_POLICY:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    goto :goto_0
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->ensureLocalAdapter()V

    .line 182
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mIsConnected:Z

    .line 183
    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_APPLY_POLICY:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 185
    :cond_1
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .parameter "started"

    .prologue
    .line 348
    return-void
.end method

.method public onShowRetryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .parameter "cachedDevice"
    .parameter "action"

    .prologue
    .line 352
    return-void
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onToggleChangeInBackground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->blockBt()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->getBlockDialog()Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->createDialog(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    .line 168
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0d32

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 158
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mEnableAutoTestLog:Z

    if-eqz v0, :cond_4

    .line 159
    if-eqz p1, :cond_5

    .line 160
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][SETTINGS][Response Time (Bluetooth on)][START] turn Bluetooth on --- BEGIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    goto :goto_0

    .line 162
    :cond_5
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][SETTINGS][Response Time (Bluetooth off)][START] turn Bluetooth off --- BEGIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2
    .parameter "outIntentFilter"

    .prologue
    .line 108
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "setIntentFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "com.htc.admin.ALLOW_BT_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    sget-boolean v0, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_BT_WIFI_HINT:Z

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method
