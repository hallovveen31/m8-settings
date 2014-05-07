.class public final Lcom/android/settings/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/DockService$ServiceHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

.field private static final DISABLE_BT_GRACE_PERIOD:J = 0x7d0L

.field private static final INVALID_STARTID:I = -0x64

.field private static final KEY_CONNECT_RETRY_COUNT:Ljava/lang/String; = "connect_retry_count"

.field private static final KEY_DISABLE_BT:Ljava/lang/String; = "disable_bt"

.field private static final KEY_DISABLE_BT_WHEN_UNDOCKED:Ljava/lang/String; = "disable_bt_when_undock"

.field private static final MAX_CONNECT_RETRY:I = 0x6

.field private static final MSG_TYPE_DISABLE_BT:I = 0x22b

.field private static final MSG_TYPE_DOCKED:I = 0xde

.field private static final MSG_TYPE_SHOW_UI:I = 0x6f

.field private static final MSG_TYPE_UNDOCKED_PERMANENT:I = 0x1bc

.field private static final MSG_TYPE_UNDOCKED_TEMPORARY:I = 0x14d

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "dock_settings"

.field private static final TAG:Ljava/lang/String; = "DockService"

.field private static final UNDOCKED_GRACE_PERIOD:J = 0x3e8L


# instance fields
.field private mAudioMediaCheckbox:Landroid/widget/CheckBox;

.field private final mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckedItems:[Z

.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mPendingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPendingStartId:I

.field private mPendingTurnOffStartId:I

.field private mPendingTurnOnStartId:I

.field private mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

.field private mRunnable:Ljava/lang/Runnable;

.field private volatile mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mStartIdAssociatedWithDialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, -0x64

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 120
    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 121
    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 576
    new-instance v0, Lcom/android/settings/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$2;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 588
    new-instance v0, Lcom/android/settings/bluetooth/DockService$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$3;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 606
    new-instance v0, Lcom/android/settings/bluetooth/DockService$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$4;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 631
    new-instance v0, Lcom/android/settings/bluetooth/DockService$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$5;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DockService;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/DockService;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/DockService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/bluetooth/DockService;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private declared-synchronized applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 13
    .parameter "device"
    .parameter "startId"

    .prologue
    .line 834
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 899
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 840
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    .local v0, arr$:[Z
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-boolean v4, v0, v6

    .line 841
    .local v4, enable:Z
    if-eqz v4, :cond_4

    .line 842
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    .line 843
    .local v1, btState:I
    sget-boolean v10, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 844
    const-string v10, "DockService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BtState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_2
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 851
    const/16 v10, 0xc

    if-eq v1, v10, :cond_4

    .line 852
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v11, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 856
    :cond_3
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 857
    iput p2, p0, Lcom/android/settings/bluetooth/DockService;->mPendingStartId:I

    .line 858
    const/16 v10, 0xb

    if-eq v1, v10, :cond_0

    .line 859
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "disable_bt_when_undock"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 834
    .end local v0           #arr$:[Z
    .end local v1           #btState:I
    .end local v4           #enable:Z
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 840
    .restart local v0       #arr$:[Z
    .restart local v4       #enable:Z
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 867
    .end local v4           #enable:Z
    :cond_5
    const/4 v10, 0x0

    :try_start_2
    iput-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 869
    const/4 v3, 0x0

    .line 870
    .local v3, callConnect:Z
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 872
    .local v2, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    array-length v10, v10

    if-ge v5, v10, :cond_b

    .line 873
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v8, v10, v5

    .line 874
    .local v8, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    sget-boolean v10, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string v10, "DockService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v12, v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_6
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-eqz v10, :cond_9

    .line 878
    const/4 v3, 0x1

    .line 887
    :cond_7
    :goto_3
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    invoke-interface {v8, p1, v10}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 888
    sget-boolean v10, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v10, :cond_8

    .line 889
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    invoke-interface {v8, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v11

    if-eq v10, v11, :cond_8

    .line 890
    const-string v10, "DockService"

    const-string v11, "Can\'t save preferred value"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 879
    :cond_9
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aget-boolean v10, v10, v5

    if-nez v10, :cond_7

    .line 881
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 882
    .local v9, status:I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 883
    sget-boolean v10, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v10, :cond_a

    const-string v10, "DockService"

    const-string v11, "applyBtSettings - Disconnecting"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_a
    iget-object v10, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v10, v10, v5

    invoke-virtual {v2, v10}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_3

    .line 895
    .end local v8           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v9           #status:I
    :cond_b
    if-eqz v3, :cond_0

    .line 896
    sget-boolean v10, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v10, :cond_c

    const-string v10, "DockService"

    const-string v11, "applyBtSettings - Connecting"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_c
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "device"

    .prologue
    .line 822
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 824
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    .line 825
    .local v3, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 826
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getPreferred(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 827
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_1
    monitor-exit p0

    return-void

    .line 822
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 14
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    .line 487
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 489
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 490
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 492
    :cond_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 493
    packed-switch p2, :pswitch_data_0

    .line 573
    :goto_0
    return-void

    .line 515
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    .local v1, ab:Landroid/app/AlertDialog$Builder;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 519
    .local v9, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    .line 521
    if-eqz p1, :cond_5

    .line 523
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v8, 0x1

    .line 526
    .local v8, firstTime:Z
    :goto_1
    move/from16 v0, p2

    invoke-direct {p0, p1, v0, v8}, Lcom/android/settings/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    move-result-object v10

    .line 528
    .local v10, items:[Ljava/lang/CharSequence;
    const v4, 0x7f0c0cf9

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 531
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mMultiClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v1, v10, v4, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 534
    const v4, 0x7f0400da

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 535
    .local v2, view:Landroid/view/View;
    const v4, 0x7f0901ca

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 538
    .local v12, rememberCheckbox:Landroid/widget/CheckBox;
    if-nez v8, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    const/4 v7, 0x1

    .line 540
    .local v7, checked:Z
    :goto_2
    invoke-virtual {v12, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 541
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v12, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 542
    sget-boolean v4, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 543
    const-string v4, "DockService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Auto connect = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .end local v8           #firstTime:Z
    .end local v10           #items:[Ljava/lang/CharSequence;
    .end local v12           #rememberCheckbox:Landroid/widget/CheckBox;
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DockService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v11, v4, Landroid/util/DisplayMetrics;->density:F

    .line 561
    .local v11, pixelScaleFactor:F
    const/high16 v4, 0x4160

    mul-float/2addr v4, v11

    float-to-int v3, v4

    .line 562
    .local v3, viewSpacingLeft:I
    const/high16 v4, 0x4160

    mul-float/2addr v4, v11

    float-to-int v5, v4

    .line 563
    .local v5, viewSpacingRight:I
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 566
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 568
    move/from16 v0, p3

    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->mStartIdAssociatedWithDialog:I

    .line 569
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 570
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x7d9

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 571
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 572
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 523
    .end local v2           #view:Landroid/view/View;
    .end local v3           #viewSpacingLeft:I
    .end local v5           #viewSpacingRight:I
    .end local v7           #checked:Z
    .end local v11           #pixelScaleFactor:F
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 538
    .restart local v2       #view:Landroid/view/View;
    .restart local v8       #firstTime:Z
    .restart local v10       #items:[Ljava/lang/CharSequence;
    .restart local v12       #rememberCheckbox:Landroid/widget/CheckBox;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 547
    .end local v2           #view:Landroid/view/View;
    .end local v8           #firstTime:Z
    .end local v10           #items:[Ljava/lang/CharSequence;
    .end local v12           #rememberCheckbox:Landroid/widget/CheckBox;
    :cond_5
    const v4, 0x7f0c0cf9

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 549
    const v4, 0x7f040046

    const/4 v6, 0x0

    invoke-virtual {v9, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 550
    .restart local v2       #view:Landroid/view/View;
    const v4, 0x7f090098

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dock_audio_media_enabled"

    const/4 v13, 0x0

    invoke-static {v4, v6, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6

    const/4 v7, 0x1

    .line 556
    .restart local v7       #checked:Z
    :goto_4
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 557
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mAudioMediaCheckbox:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_3

    .line 553
    .end local v7           #checked:Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 4
    .parameter "device"

    .prologue
    .line 929
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 930
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 931
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 933
    :cond_0
    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 180
    const-string v0, "dock_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private handleBluetoothStateOn(I)V
    .locals 10
    .parameter "startId"

    .prologue
    const/4 v9, 0x0

    const/16 v8, -0x64

    const/4 v7, 0x0

    .line 746
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_5

    .line 747
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 748
    sget-boolean v4, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 749
    const-string v4, "DockService"

    const-string v5, "applying settings"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/android/settings/bluetooth/DockService;->mPendingStartId:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V

    .line 757
    :cond_1
    :goto_0
    iput-object v9, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 758
    iget v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingStartId:I

    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 785
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    if-eq v4, v8, :cond_3

    .line 786
    iget v4, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 787
    iput v8, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    .line 790
    :cond_3
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 791
    :goto_2
    return-void

    .line 752
    :cond_4
    sget-boolean v4, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 753
    const-string v4, "DockService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPendingDevice  ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") != mDevice ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 761
    .local v2, prefs:Landroid/content/SharedPreferences;
    sget-boolean v4, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 762
    const-string v4, "DockService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A DISABLE_BT_WHEN_UNDOCKED = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "disable_bt_when_undock"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_6
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v4}, Lcom/android/settings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 767
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 768
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 770
    .local v3, state:I
    if-eqz v3, :cond_7

    .line 771
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 773
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_2

    .line 774
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DockService;->connectIfEnabled(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    .line 776
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_7
    const-string v4, "disable_bt"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 778
    iput p1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 779
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "disable_bt"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2
.end method

.method private handleBtStateChange(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/16 v4, -0x64

    .line 712
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 713
    .local v0, btState:I
    monitor-enter p0

    .line 714
    :try_start_0
    sget-boolean v1, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DockService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BtState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPendingDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 716
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/DockService;->handleBluetoothStateOn(I)V

    .line 742
    :cond_1
    :goto_0
    monitor-exit p0

    .line 743
    return-void

    .line 717
    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 722
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 723
    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_0

    .line 742
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 724
    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 727
    :try_start_1
    sget-boolean v1, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "DockService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth = OFF mPendingDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_4
    iget v1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    if-eq v1, v4, :cond_5

    .line 730
    iget v1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    invoke-static {p0, v1}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 731
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 732
    const/16 v1, -0x64

    iput v1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 735
    :cond_5
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_6

    .line 736
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 737
    iput p2, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOnStartId:I

    goto :goto_0

    .line 739
    :cond_6
    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized handleDocked(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    .line 903
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/bluetooth/DockService;->initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;

    .line 907
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p3}, Lcom/android/settings/bluetooth/DockService;->applyBtSettings(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    :goto_0
    monitor-exit p0

    return-void

    .line 909
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 903
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleUndocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 914
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 915
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 916
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 918
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 920
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 921
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    .line 922
    if-eqz p1, :cond_1

    .line 923
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 924
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_1
    monitor-exit p0

    return-void

    .line 914
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V
    .locals 7
    .parameter "disconnectedDevice"
    .parameter "profile"
    .parameter "startId"

    .prologue
    .line 795
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 796
    const-string v4, "DockService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handling failed connect for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    if-eqz p1, :cond_1

    .line 802
    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 803
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 804
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 806
    .local v3, state:I
    if-eqz v3, :cond_1

    .line 807
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 809
    .local v1, dockedDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 810
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 812
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 818
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v1           #dockedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #state:I
    :cond_1
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit p0

    return-void

    .line 795
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private initBtSettings(Landroid/bluetooth/BluetoothDevice;IZ)[Ljava/lang/CharSequence;
    .locals 6
    .parameter "device"
    .parameter "state"
    .parameter "firstTime"

    .prologue
    const v3, 0x7f0c0cfb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 660
    packed-switch p2, :pswitch_data_0

    .line 670
    const/4 v0, 0x0

    .line 707
    :goto_0
    return-object v0

    .line 664
    :pswitch_0
    const/4 v1, 0x1

    .line 673
    .local v1, numOfProfiles:I
    :goto_1
    new-array v2, v1, [Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 674
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    .line 675
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 678
    .local v0, items:[Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 697
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 698
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 699
    if-eqz p3, :cond_1

    .line 701
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v4, v2, v4

    goto :goto_0

    .line 667
    .end local v0           #items:[Ljava/lang/CharSequence;
    .end local v1           #numOfProfiles:I
    :pswitch_2
    const/4 v1, 0x2

    .line 668
    .restart local v1       #numOfProfiles:I
    goto :goto_1

    .line 680
    .restart local v0       #items:[Ljava/lang/CharSequence;
    :pswitch_3
    const v2, 0x7f0c0cfa

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 681
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DockService;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 682
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings/bluetooth/HeadsetProfile;

    move-result-object v3

    aput-object v3, v2, v4

    .line 683
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v3

    aput-object v3, v2, v5

    .line 684
    if-eqz p3, :cond_0

    .line 686
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v4

    .line 687
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    aput-boolean v5, v2, v5

    goto :goto_0

    .line 689
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    .line 690
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v5

    invoke-interface {v3, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto :goto_0

    .line 703
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfiles:[Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    aget-object v3, v3, v4

    invoke-interface {v3, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    aput-boolean v3, v2, v4

    goto :goto_0

    .line 660
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 678
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private msgTypeDisableBluetooth(I)Z
    .locals 5
    .parameter "startId"

    .prologue
    const/4 v1, 0x1

    .line 309
    sget-boolean v2, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 310
    const-string v2, "DockService"

    const-string v3, "BT DISABLE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "disable_bt_when_undock"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 315
    const/4 v1, 0x0

    .line 323
    :cond_1
    :goto_0
    return v1

    .line 318
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "disable_bt"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 319
    iput p1, p0, Lcom/android/settings/bluetooth/DockService;->mPendingTurnOffStartId:I

    .line 320
    sget-boolean v2, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 321
    const-string v2, "DockService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable failed. try again later "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 9
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    const/4 v2, 0x1

    const/4 v8, -0x1

    const/16 v7, 0x1bc

    .line 369
    sget-boolean v3, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 372
    const-string v3, "DockService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1 Has undock perm msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v7, v6}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v3, "DockService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2 Has undock perm msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    invoke-virtual {v5, v7, p1}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    invoke-virtual {v3, v7}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 379
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->removeMessages(I)V

    .line 380
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 382
    if-eqz p1, :cond_4

    .line 383
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 384
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    .line 386
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 389
    :cond_1
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 394
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 395
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isManagerReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    .line 398
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 420
    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 400
    :cond_3
    move-object v0, p1

    .line 401
    .local v0, d:Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Lcom/android/settings/bluetooth/DockService$1;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/android/settings/bluetooth/DockService$1;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 412
    .end local v0           #d:Landroid/bluetooth/BluetoothDevice;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dock_audio_media_enabled"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 414
    .local v1, dockAudioMediaEnabled:I
    if-ne v1, v8, :cond_2

    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    .line 416
    const/4 v3, 0x0

    invoke-direct {p0, v3, p2, p3}, Lcom/android/settings/bluetooth/DockService;->handleDocked(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6
    .parameter "device"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 337
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->handleUndocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 338
    if-eqz p1, :cond_1

    .line 339
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 341
    .local v1, prefs:Landroid/content/SharedPreferences;
    sget-boolean v3, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 342
    const-string v3, "DockService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISABLE_BT_WHEN_UNDOCKED = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "disable_bt_when_undock"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    const-string v3, "disable_bt_when_undock"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DockService;->hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 349
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "disable_bt_when_undock"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 364
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return v2

    .line 352
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    :cond_2
    sget-boolean v3, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 353
    const-string v3, "DockService"

    const-string v4, "QUEUED BT DISABLE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v4, 0x22b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, p2, v5}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 358
    .local v0, newMsg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 360
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .parameter "device"
    .parameter "state"
    .parameter "startId"

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/16 v2, 0x1bc

    invoke-virtual {v1, v2, p2, p3, p1}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 332
    .local v0, newMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 333
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)Landroid/os/Message;
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 446
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 447
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.intent.extra.DOCK_STATE"

    const/16 v5, -0x4d2

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 449
    .local v2, state:I
    sget-boolean v3, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 450
    const-string v5, "DockService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " State:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " Device: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_1

    const-string v3, "null"

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    packed-switch v2, :pswitch_data_0

    move-object v3, v4

    .line 482
    :goto_1
    return-object v3

    .line 450
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 457
    :pswitch_0
    const/16 v1, 0x14d

    .line 482
    .local v1, msgType:I
    :goto_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    goto :goto_1

    .line 462
    .end local v1           #msgType:I
    :pswitch_1
    if-nez v0, :cond_2

    .line 463
    const-string v3, "DockService"

    const-string v5, "device is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 464
    goto :goto_1

    .line 468
    :cond_2
    :pswitch_2
    const-string v3, "com.android.settings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 469
    if-nez v0, :cond_3

    .line 470
    const-string v3, "DockService"

    const-string v5, "device is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 471
    goto :goto_1

    .line 473
    :cond_3
    const/16 v1, 0x6f

    .restart local v1       #msgType:I
    goto :goto_2

    .line 475
    .end local v1           #msgType:I
    :cond_4
    const/16 v1, 0xde

    .line 477
    .restart local v1       #msgType:I
    goto :goto_2

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized processMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    .line 260
    .local v3, msgType:I
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 261
    .local v5, state:I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 262
    .local v4, startId:I
    const/4 v1, 0x0

    .line 263
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 264
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 267
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    sget-boolean v6, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v7, "DockService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processMessage: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " state: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " device = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_4

    const-string v6, "null"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    const/4 v0, 0x0

    .line 272
    .local v0, deferFinishCall:Z
    sparse-switch v3, :sswitch_data_0

    .line 300
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mPendingDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v6, :cond_3

    const/16 v6, 0x14d

    if-eq v3, v6, :cond_3

    if-nez v0, :cond_3

    .line 304
    invoke-static {p0, v4}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_3
    monitor-exit p0

    return-void

    .line 267
    .end local v0           #deferFinishCall:Z
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 274
    .restart local v0       #deferFinishCall:Z
    :sswitch_0
    if-eqz v1, :cond_2

    .line 275
    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/bluetooth/DockService;->createDialog(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 259
    .end local v0           #deferFinishCall:Z
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #msgType:I
    .end local v4           #startId:I
    .end local v5           #state:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 280
    .restart local v0       #deferFinishCall:Z
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #msgType:I
    .restart local v4       #startId:I
    .restart local v5       #state:I
    :sswitch_1
    :try_start_2
    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/bluetooth/DockService;->msgTypeDocked(Landroid/bluetooth/BluetoothDevice;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 281
    goto :goto_1

    .line 285
    :sswitch_2
    :try_start_3
    invoke-direct {p0, v1, v4}, Lcom/android/settings/bluetooth/DockService;->msgTypeUndockedPermanent(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, ex:Ljava/lang/NullPointerException;
    :try_start_4
    const-string v6, "DockService"

    const-string v7, "NullPointerException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 292
    .end local v2           #ex:Ljava/lang/NullPointerException;
    :sswitch_3
    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/bluetooth/DockService;->msgTypeUndockedTemporary(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 296
    :sswitch_4
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/DockService;->msgTypeDisableBluetooth(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    goto :goto_1

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_0
        0xde -> :sswitch_1
        0x14d -> :sswitch_3
        0x1bc -> :sswitch_2
        0x22b -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method declared-synchronized hasOtherConnectedDevices(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 9
    .parameter "dock"

    .prologue
    const/4 v5, 0x0

    .line 424
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v2

    .line 425
    .local v2, cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    iget-object v6, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 426
    .local v1, btDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 442
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 429
    :cond_1
    :try_start_1
    sget-boolean v6, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 430
    const-string v6, "DockService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "btDevices = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v6, "DockService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cachedDeviceUIs = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 435
    .local v3, deviceUI:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 436
    .local v0, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 438
    sget-boolean v5, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "DockService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connected deviceUI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 424
    .end local v0           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #btDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2           #cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    .end local v3           #deviceUI:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 127
    sget-boolean v2, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DockService"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    invoke-static {}, Lcom/android/settings/bluetooth/DockEventReceiver;->onServiceCreated()V

    .line 130
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 131
    .local v0, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_1

    .line 132
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 137
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 138
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 139
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-nez v2, :cond_2

    .line 140
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DockService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 147
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 148
    new-instance v2, Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/bluetooth/DockService$ServiceHandler;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/os/Looper;Lcom/android/settings/bluetooth/DockService$1;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    sget-boolean v0, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DockService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mDialog:Landroid/app/AlertDialog;

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 166
    :cond_3
    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 167
    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 168
    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 169
    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mServiceLooper:Landroid/os/Looper;

    .line 170
    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mServiceHandler:Lcom/android/settings/bluetooth/DockService$ServiceHandler;

    .line 171
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    .line 937
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 939
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 940
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    :cond_0
    monitor-exit p0

    return-void

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 946
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 185
    sget-boolean v4, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DockService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand startId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    if-nez p1, :cond_3

    .line 189
    sget-boolean v4, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "DockService"

    const-string v5, "START_NOT_STICKY - intent is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 243
    :cond_2
    :goto_0
    return v7

    .line 197
    :cond_3
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 198
    invoke-direct {p0, p1, p3}, Lcom/android/settings/bluetooth/DockService;->handleBtStateChange(Landroid/content/Intent;I)V

    goto :goto_0

    .line 206
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 207
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 208
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 210
    .local v0, disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 211
    .local v3, retryCount:I
    if-ge v3, v9, :cond_2

    .line 212
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings/bluetooth/HeadsetProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/settings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 216
    .end local v0           #disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #retryCount:I
    :cond_5
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 217
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 220
    .restart local v0       #disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "connect_retry_count"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 221
    .restart local v3       #retryCount:I
    if-ge v3, v9, :cond_2

    .line 222
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 223
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v4

    invoke-direct {p0, v0, v4, p3}, Lcom/android/settings/bluetooth/DockService;->handleUnexpectedDisconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;I)V

    goto :goto_0

    .line 228
    .end local v0           #disconnectedDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #retryCount:I
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->parseIntent(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v1

    .line 229
    .local v1, msg:Landroid/os/Message;
    if-nez v1, :cond_8

    .line 231
    sget-boolean v4, Lcom/android/settings/bluetooth/DockService;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "DockService"

    const-string v5, "START_NOT_STICKY - Bad intent."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_7
    invoke-static {p0, p3}, Lcom/android/settings/bluetooth/DockEventReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto/16 :goto_0

    .line 236
    :cond_8
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v5, 0xde

    if-ne v4, v5, :cond_9

    .line 237
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "connect_retry_count"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    :cond_9
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 241
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DockService;->processMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
