.class public Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;
.super Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;
.source "HtcMiniPlusWidgetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler$1;,
        Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler$BluetoothServiceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler",
        "<",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mHasConnection:Z


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mHeadset:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    .line 23
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->DEBUG:Z

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHasConnection:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->updateUI()V

    return-void
.end method

.method private getHeadsetProfileProxy()V
    .locals 4

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "-getHeadsetProfileProxy()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 86
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler$BluetoothServiceListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler$BluetoothServiceListener;-><init>(Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler$1;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 89
    :cond_1
    return-void
.end method

.method public static hasConnection()Z
    .locals 3

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-hasConnection():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHasConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHasConnection:Z

    return v0
.end method

.method private updateUI()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 92
    sget-boolean v6, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 93
    sget-object v6, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHeadset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-object v6, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v6, :cond_6

    .line 97
    iget-object v6, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 98
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v5, 0x0

    .line 99
    .local v5, num:I
    const/4 v2, 0x0

    .line 100
    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 101
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, name:Ljava/lang/String;
    sget-boolean v6, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 103
    sget-object v6, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "device["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 106
    :cond_2
    if-eqz v4, :cond_1

    const-string v6, "HTC Mini"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "HTC mini"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #name:Ljava/lang/String;
    :cond_4
    sget-boolean v6, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 113
    sget-object v6, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update HTC Mini+ connection number:\nSize of deviceList:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Number of HTC Mini:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_5
    sput-boolean v10, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHasConnection:Z

    .line 120
    if-ne v5, v10, :cond_7

    .line 121
    const v6, 0x7f0c0aef

    invoke-virtual {p0, v6, v9, v9}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 129
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #num:I
    :cond_6
    :goto_1
    return-void

    .line 122
    .restart local v1       #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #num:I
    :cond_7
    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 123
    const v6, 0x7f0c0af0

    invoke-virtual {p0, v6, v9, v9}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->setWidgetStatus(ILjava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 125
    :cond_8
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHasConnection:Z

    .line 126
    invoke-virtual {p0, v9, v9, v9}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->setWidgetStatus(Ljava/lang/CharSequence;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_1
.end method


# virtual methods
.method protected acquirePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyInBackground(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/framework/core/HtcAbsWidgetEnabler;->onDestroyInBackground(Landroid/app/Activity;)V

    .line 176
    sget-boolean v1, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 177
    sget-object v1, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v2, "-onDestroyInBackground()"

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 182
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    iput-object v4, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 189
    :cond_1
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-onDestroyInBackground():Check point#1:"

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

    .line 186
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    throw v1
.end method

.method protected onGetDefaultState()Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;
    .locals 2

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "-onGetDefaultState()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "-onHandleStateChangedInBackground()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->getHeadsetProfileProxy()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->updateUI()V

    goto :goto_0
.end method

.method protected onRebindViewInBackground()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method protected onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, action:Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 148
    sget-object v3, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-onReceiveInBackground():\naction:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 155
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, name:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "HTC Mini"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "HTC mini"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V

    .line 161
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #name:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onResumeInBackground(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->TAG:Ljava/lang/String;

    const-string v1, "-onResumeInBackground()"

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/core/wireless/HtcMiniPlusWidgetEnabler;->onHandleStateChangedInBackground(Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;)V

    .line 66
    return-void
.end method

.method protected setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "outIntentFilter"

    .prologue
    .line 140
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    return-void
.end method
