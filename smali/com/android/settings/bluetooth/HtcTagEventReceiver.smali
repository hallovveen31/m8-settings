.class public Lcom/android/settings/bluetooth/HtcTagEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcTagEventReceiver.java"


# static fields
.field private static final ACTION_BLE_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.htc.bluetooth.le.SERVICE_STATE_CHANGED"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final EXTRA_EVENT:Ljava/lang/String; = "event_id"

.field public static final EXTRA_LOCK_SCREEN_ON:Ljava/lang/String; = "lock_screen_on"

.field public static final EXTRA_PREVIOUS_EVENT:Ljava/lang/String; = "previous_event_id"

.field public static final EXTRA_SERVICE_STATE:Ljava/lang/String; = "com.htc.bluetooth.le.SERVICE_STATE"

.field public static final EXTRA_SERVICE_TYPE:Ljava/lang/String; = "com.htc.bluetooth.le.SERVICE_TYPE"

.field public static final EXTRA_SERVICE_VALUE:Ljava/lang/String; = "com.htc.bluetooth.le.SERVICE_VALUE"

.field private static final TAG:Ljava/lang/String; = "HtcTagEventReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/HtcTagEventReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateTagDialog(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;ZI)V
    .locals 2
    .parameter "context"
    .parameter "device"
    .parameter "lsNotify"
    .parameter "newEvent"

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/HtcTagDialog;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, tagIntent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43
    const-string v1, "lock_screen_on"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    sget-boolean v12, Lcom/android/settings/bluetooth/HtcTagManager;->SUPPORT_HTC_TAG:Z

    if-eqz v12, :cond_0

    if-nez p2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, action:Ljava/lang/String;
    const-string v12, "com.htc.bluetooth.le.SERVICE_STATE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 56
    const-string v12, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 57
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    const-string v12, "com.htc.bluetooth.le.SERVICE_TYPE"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 58
    .local v10, type:I
    const-string v12, "com.htc.bluetooth.le.SERVICE_STATE"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 59
    .local v8, state:I
    const-string v12, "com.htc.bluetooth.le.SERVICE_VALUE"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 60
    .local v11, value:I
    sget-boolean v12, Lcom/android/settings/bluetooth/HtcTagEventReceiver;->DEBUG:Z

    if-eqz v12, :cond_2

    const-string v12, "HtcTagEventReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "service changed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getHtcTagManager()Lcom/android/settings/bluetooth/HtcTagManager;

    move-result-object v9

    .line 62
    .local v9, tagManager:Lcom/android/settings/bluetooth/HtcTagManager;
    iget v6, v9, Lcom/android/settings/bluetooth/HtcTagManager;->mEvent:I

    .line 63
    .local v6, oldEvent:I
    invoke-virtual {v9, v2, v10, v8, v11}, Lcom/android/settings/bluetooth/HtcTagManager;->onTagEventChanged(Landroid/bluetooth/BluetoothDevice;III)I

    move-result v5

    .line 64
    .local v5, newEvent:I
    sget-boolean v12, Lcom/android/settings/bluetooth/HtcTagEventReceiver;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "HtcTagEventReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onTagEventChanged: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    const/4 v12, -0x1

    if-eq v5, v12, :cond_0

    if-lt v5, v6, :cond_0

    .line 67
    const-string v12, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 68
    .local v7, pm:Landroid/os/PowerManager;
    const-string v12, "keyguard"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 69
    .local v3, km:Landroid/app/KeyguardManager;
    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_4
    const/4 v4, 0x1

    .line 70
    .local v4, lsNotify:Z
    :goto_1
    if-eqz v4, :cond_9

    .line 71
    const/4 v12, -0x1

    if-eq v6, v12, :cond_5

    .line 73
    const/4 v12, 0x1

    iput-boolean v12, v9, Lcom/android/settings/bluetooth/HtcTagManager;->mEventsChanged:Z

    .line 75
    :cond_5
    iget-boolean v12, v9, Lcom/android/settings/bluetooth/HtcTagManager;->hasLsNotification:Z

    if-eqz v12, :cond_7

    .line 76
    invoke-static/range {p1 .. p1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    move-result-object v12

    invoke-virtual {v12, v2, v5}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->updateTagLsNotification(Landroid/bluetooth/BluetoothDevice;I)V

    .line 89
    :goto_2
    const/16 v12, 0x3eb

    if-ne v5, v12, :cond_a

    .line 90
    const/4 v12, -0x1

    iput v12, v9, Lcom/android/settings/bluetooth/HtcTagManager;->mEvent:I

    goto/16 :goto_0

    .line 69
    .end local v4           #lsNotify:Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 78
    .restart local v4       #lsNotify:Z
    :cond_7
    const/16 v12, 0x3eb

    if-ne v5, v12, :cond_8

    .line 79
    invoke-static/range {p1 .. p1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->stopReminderViewTracking()V

    goto :goto_2

    .line 81
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;

    move-result-object v12

    invoke-virtual {v12, v2, v5}, Lcom/android/settings/bluetooth/HtcTagLockScreenAgent;->startReminderViewTracking(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_2

    .line 86
    :cond_9
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/android/settings/bluetooth/HtcTagEventReceiver;->updateTagDialog(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;ZI)V

    goto :goto_2

    .line 92
    :cond_a
    iput v5, v9, Lcom/android/settings/bluetooth/HtcTagManager;->mEvent:I

    goto/16 :goto_0
.end method
