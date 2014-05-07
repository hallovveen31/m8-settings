.class public Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;
.super Lcom/android/settings/framework/preference/HtcAbsActionPreference;
.source "HtcMiniPlusPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnDestroyListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$BluetoothServiceListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mHasConnection:Z

.field private mHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mHtcMiniConnectionFilter:Landroid/content/IntentFilter;

.field private mHtcMiniConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHasConnection:Z

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$1;-><init>(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHtcMiniConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHasConnection:Z

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$1;-><init>(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHtcMiniConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHasConnection:Z

    new-instance v0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$1;-><init>(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHtcMiniConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->updateSummary()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->updateUI()V

    return-void
.end method

.method private getHeadsetProfileProxy()V
    .locals 4

    sget-boolean v0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->TAG:Ljava/lang/String;

    const-string v1, "-getHeadsetProfileProxy()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$BluetoothServiceListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$BluetoothServiceListener;-><init>(Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference$1;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_1
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4

    sget-boolean v1, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->TAG:Ljava/lang/String;

    const-string v2, "-initialize()"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHtcMiniConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.bluetooth.htcmini.HtcMiniMainActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mIntent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->updateUI()V

    return-void
.end method

.method private updateSummary()V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-boolean v8, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mHeadset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    sget-boolean v8, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->DEBUG:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "device["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    :cond_2
    if-eqz v4, :cond_1

    const-string v8, "HTC Mini"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "HTC mini"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    sget-boolean v8, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->DEBUG:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Update HTC Mini+ connection number:\nSize of deviceList:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Number of HTC Mini:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v6, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHasConnection:Z

    if-ne v5, v6, :cond_7

    const v8, 0x7f0c0aef

    invoke-virtual {p0, v8}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    :goto_1
    iget-object v8, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mIntent:Landroid/content/Intent;

    const-string v9, "start"

    iget-boolean v10, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHasConnection:Z

    if-nez v10, :cond_9

    :goto_2
    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    :cond_6
    return-void

    :cond_7
    const/4 v8, 0x2

    if-ne v5, v8, :cond_8

    const v8, 0x7f0c0af0

    invoke-virtual {p0, v8}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1

    :cond_8
    iput-boolean v7, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHasConnection:Z

    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    move v6, v7

    goto :goto_2
.end method

.method private updateUI()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->TAG:Ljava/lang/String;

    const-string v1, "-updateUI()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->getHeadsetProfileProxy()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->updateSummary()V

    goto :goto_0
.end method


# virtual methods
.method protected getCustomActionType()Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    return-object v0
.end method

.method protected getCustomIntent()Landroid/content/Intent;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mIntent:Landroid/content/Intent;

    const-string v2, "start"

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHasConnection:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mIntent:Landroid/content/Intent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0aee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    const v0, 0x7f0c0aee

    return v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHtcMiniConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-onDestroy():Check point#1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    throw v1
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/preference/wireless/HtcMiniPlusPreference;->updateUI()V

    return-void
.end method
