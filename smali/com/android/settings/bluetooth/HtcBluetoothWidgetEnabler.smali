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

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcAutoTestLog;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mEnableAutoTestLog:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mIsConnected:Z

    return-void
.end method

.method private applyBluetoothPolicy()V
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/framework/os/HtcServiceManager;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/HtcIfDevicePolicyManager;

    move-result-object v1

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/app/admin/HtcIfDevicePolicyManager;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v6

    if-nez v6, :cond_2

    const/4 v4, 0x1

    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    const v5, 0x7f0c088f

    const/4 v0, 0x0

    const/4 v3, 0x0

    const v6, 0x7f0c088f

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enable3LMSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/framework/os/HtcServiceManager;->getDeviceManager3LM(Landroid/content/Context;)Lcom/htc/service/DeviceManager3LM;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/service/DeviceManager3LM;->getBluetoothEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->ensureLocalAdapter()V

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(I)V

    goto :goto_1
.end method

.method private ensureLocalAdapter()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0, p0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setOnDialogCreatedListener(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$OnDialogCreatedListener;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v4, "Bluetooth is not supported"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0c0d31

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v3, 0x7f0c0d31

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_2
    return-void
.end method

.method private getBlockDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 3

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00b9

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

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

    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 3

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

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(I)V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDialogCreated(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDialogCreated, showDialog"

    invoke-static {v0}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected onGetDefaultState()Lcom/android/settings/bluetooth/HtcBluetoothState;
    .locals 2

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onGetDefaultState"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_INIT:Lcom/android/settings/bluetooth/HtcBluetoothState;

    return-object v0
.end method

.method protected bridge synthetic onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onGetDefaultState()Lcom/android/settings/bluetooth/HtcBluetoothState;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleStateChangedInBackground(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/settings/bluetooth/HtcBluetoothState;->getBaseState(I)Lcom/android/settings/bluetooth/HtcBluetoothState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    return-void
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v3, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_0

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

    :cond_0
    const v2, 0x7f0c0d31

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler$1;->$SwitchMap$com$android$settings$bluetooth$HtcBluetoothState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mEnableAutoTestLog:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_ON:Lcom/android/settings/bluetooth/HtcBluetoothState;

    if-ne p1, v3, :cond_3

    const-string v3, "AutoTest"

    const-string v4, "[AutoProf](301) [OTHER][SETTINGS][Response Time (Bluetooth on)][START] turn Bluetooth on --- END"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_INIT_OFF:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->ensureLocalAdapter()V

    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_SYNC:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    goto :goto_1

    :pswitch_1
    const v2, 0x7f0c106f

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->applyBluetoothPolicy()V

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v4, "bluetooth"

    invoke-static {v3, v4}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->setSwitchEnabled(Z)V

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v4, "bluetooth"

    invoke-static {v3, v4}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v2, 0x7f0c106f

    goto :goto_0

    :pswitch_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v0, 0x0

    const v2, 0x7f0c0512

    goto :goto_0

    :pswitch_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_BT_WIFI_HINT:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mIsConnected:Z

    if-nez v3, :cond_2

    const v2, 0x7f0c0ac2

    goto :goto_0

    :cond_2
    const v2, 0x7f0c106e

    goto :goto_0

    :pswitch_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v0, 0x0

    const v2, 0x7f0c0513

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_OFF:Lcom/android/settings/bluetooth/HtcBluetoothState;

    if-ne p1, v3, :cond_1

    const-string v3, "AutoTest"

    const-string v4, "[AutoProf](301) [OTHER][SETTINGS][Response Time (Bluetooth off)][START] turn Bluetooth off --- END"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

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

    check-cast p1, Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    return-void
.end method

.method public onPauseInBackground(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    :cond_0
    return-void
.end method

.method protected onRebindViewInBackground()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "onRebindViewInBackground()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_SYNC:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v4, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v4, :cond_0

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

    :cond_0
    const-string v4, "com.htc.admin.ALLOW_BT_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_APPLY_POLICY:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_AIRPLANE_MODE_CHANGED:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    goto :goto_0

    :cond_3
    const-string v4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

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

    :cond_4
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    const/4 v3, 0x1

    :cond_5
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mIsConnected:Z

    sget-object v3, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_APPLY_POLICY:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    goto :goto_0
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->ensureLocalAdapter()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mIsConnected:Z

    :cond_0
    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothState;->STATE_APPLY_POLICY:Lcom/android/settings/bluetooth/HtcBluetoothState;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/bluetooth/HtcBluetoothState;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    :cond_1
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onShowRetryDialog(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onToggleChangeInBackground(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

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

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->blockBt()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->getBlockDialog()Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->createDialog(Lcom/htc/widget/HtcAlertDialog$Builder;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0d32

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mEnableAutoTestLog:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_5

    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][SETTINGS][Response Time (Bluetooth on)][START] turn Bluetooth on --- BEGIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    goto :goto_0

    :cond_5
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][SETTINGS][Response Time (Bluetooth off)][START] turn Bluetooth off --- BEGIN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 2

    sget-object v0, Lcom/android/settings/bluetooth/HtcBluetoothWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "setIntentFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.htc.admin.ALLOW_BT_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/settings/wifi/CustomUtil;->SUPPORT_BT_WIFI_HINT:Z

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
