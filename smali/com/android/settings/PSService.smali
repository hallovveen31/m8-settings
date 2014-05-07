.class public Lcom/android/settings/PSService;
.super Landroid/app/Service;
.source "PSService.java"


# static fields
.field public static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "com.htc.intent.action.CUSTOMIZATION_CHANGE"

.field private static final CHECKING_NETWORK:I = -0x7ffe0000

.field public static CurrentStatus:I = 0x0

.field private static Dis:Ljava/io/DataInputStream; = null

.field public static final DisabledIPT:Ljava/lang/String; = "com.htc.disable.ipt"

.field private static Dos:Ljava/io/DataOutputStream; = null

.field public static final Enable_MLINK_UI_Intent:Ljava/lang/String; = "com.htc.android.enableMLINK.UI"

.field public static First_Get_PCSC_Intent:Ljava/lang/String; = null

.field public static IPTConnPass:Z = false

.field public static final IPTDisabled_Intent:Ljava/lang/String; = "com.htc.ipt.disabled"

.field public static final IPTEnabled_Intent:Ljava/lang/String; = "com.htc.ipt.enabled"

.field private static final IPT_CONNECTED:I = -0x7ffd0000

.field private static final IPT_DISCONNECTED:I = -0x7ffc0000

.field public static IPT_Fail_Notioncation:Ljava/lang/String; = null

.field public static IPT_Notioncation:Ljava/lang/String; = null

.field public static final ISEnabled_Intent:Ljava/lang/String; = "com.htc.is.enabled"

.field public static final KeyGuardUnlock_Intent:Ljava/lang/String; = "com.htc.intent.action.KEY_GUARD_UNLOCK"

.field public static final Locate_Intent:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final MDM_Tethering_Intent:Ljava/lang/String; = "com.htc.mdm.usb.intent.MDM_TETHERING_ALLOW"

.field public static final MDM_USB_Intent:Ljava/lang/String; = "com.htc.mdm.usb.intent.MDM_USB_ALLOW"

.field private static final NATCOMPLETE:I = 0x20000

.field public static final NCM_Intent:Ljava/lang/String; = "com.htc.intent.action.USB_HTC_CARMODE"

.field public static Notshow_notice:Z = false

.field public static final OpeningPS_Intent:Ljava/lang/String; = "com.htc.android.opening_IPT"

.field public static final Opening_MLINK_UI_Intent:Ljava/lang/String; = "com.htc.android.openingMLINK.UI"

.field private static final PCNETWORK_CONNECTED:I = 0x30000

.field private static final PCNETWORK_DISCONNECTED:I = 0x40000

.field public static final PCSC_Intent:Ljava/lang/String; = "com.htc.intent.action.USB_CONNECT2PC"

.field public static final PERMISSION_APP_PLATFORM:Ljava/lang/String; = "com.htc.permission.APP_PLATFORM"

.field public static PSEnabled:Z = false

.field public static final RUN_SMART_PCSC_Intent:Ljava/lang/String; = "com.htc.android.smartPCSC"

.field public static final SMART_PCSC_COMPLETE_Intent:Ljava/lang/String; = "com.htc.android.smartPCSC.complete"

.field public static final StartISFail_Intent:Ljava/lang/String; = "com.htc.android.startIS.Fail"

.field public static final StartPS_Intent:Ljava/lang/String; = "com.htc.android.start_IPT"

.field private static final Status_End:I = 0x9

.field private static final Status_HandShakeOK:I = 0x8

.field private static final Status_NATCOMPLETE:I = 0x5

.field private static final Status_NDISSetup:I = 0x4

.field private static final Status_NetworkChecking:I = 0x6

.field private static final Status_PCNetwork:I = 0x7

.field public static final StopPS_Intent:Ljava/lang/String; = "com.htc.android.stop_IPT"

.field private static final TAG:Ljava/lang/String; = "SmartNS_PSService"

.field public static USBPlugged:Z = false

.field public static final USB_Intent:Ljava/lang/String; = "com.htc.usb.change"

.field public static USB_Notioncation:Ljava/lang/String; = null

.field public static final USB_SWITCH_MTP_OFF:Ljava/lang/String; = "com.htc.android.stop_MTP"

.field public static final USB_SWITCH_MTP_ON:Ljava/lang/String; = "com.htc.android.start_MTP"

.field private static close:Z

.field public static defaultType:I

.field public static isDeviceNetworkConnected:Z

.field protected static mClient:Ljava/net/Socket;

.field private static mServer:Ljava/net/ServerSocket;

.field private static final mSyncLock:Ljava/lang/Object;

.field private static pause:Landroid/os/ConditionVariable;

.field public static reTryConn:I

.field public static runSmartPCSC:Z

.field public static smartNSChecked:Z

.field public static triggerFromIPT_UI:Z


# instance fields
.field private DBG:Z

.field ed:Landroid/content/SharedPreferences$Editor;

.field mContext:Landroid/content/Context;

.field private mService1:Lcom/htc/service/HtcHardwareManager;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "IPT_Notioncation"

    sput-object v0, Lcom/android/settings/PSService;->IPT_Notioncation:Ljava/lang/String;

    const-string v0, "IPT_Fail_Notioncation"

    sput-object v0, Lcom/android/settings/PSService;->IPT_Fail_Notioncation:Ljava/lang/String;

    const-string v0, "First_Get_PCSC_intent"

    sput-object v0, Lcom/android/settings/PSService;->First_Get_PCSC_Intent:Ljava/lang/String;

    const-string v0, "USB_Notioncation"

    sput-object v0, Lcom/android/settings/PSService;->USB_Notioncation:Ljava/lang/String;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/settings/PSService;->pause:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    sput-boolean v1, Lcom/android/settings/PSService;->close:Z

    sput-boolean v1, Lcom/android/settings/PSService;->Notshow_notice:Z

    sput-boolean v1, Lcom/android/settings/PSService;->IPTConnPass:Z

    sput-boolean v1, Lcom/android/settings/PSService;->USBPlugged:Z

    sput-boolean v1, Lcom/android/settings/PSService;->PSEnabled:Z

    sput-boolean v1, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    sput-boolean v1, Lcom/android/settings/PSService;->runSmartPCSC:Z

    sput-boolean v1, Lcom/android/settings/PSService;->smartNSChecked:Z

    sput-boolean v1, Lcom/android/settings/PSService;->triggerFromIPT_UI:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/PSService;->mSyncLock:Ljava/lang/Object;

    sput v1, Lcom/android/settings/PSService;->reTryConn:I

    sput v1, Lcom/android/settings/PSService;->defaultType:I

    const/4 v0, 0x4

    sput v0, Lcom/android/settings/PSService;->CurrentStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PSService;->DBG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    return-void
.end method

.method private CloseConn()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v3, "ps_enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/PSService;->PSEnabled:Z

    iget-object v2, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v3, "smart_pcsc"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/PSService;->runSmartPCSC:Z

    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SmartNS_PSService"

    const-string v3, "Close all socket related, force to jump out handshaking process, inform PCSC to switch to other status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "SmartNS_PSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before closed Called, PSEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/PSService;->PSEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v2, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v3, "sns_type"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.ipt.disabled"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v2, Lcom/android/settings/PSService;->IPTConnPass:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "SmartNS_PSService"

    const-string v3, "UsbMiscControl_IPT(0), Send: com.htc.ipt.disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/PSService;->runSmartPCSC:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/PSService;->PSEnabled:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/PSService;->IPTConnPass:Z

    iget-object v2, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v3, "ps_enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v3, "ipt_connectpass"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v3, "smart_pcsc"

    sget-boolean v4, Lcom/android/settings/PSService;->runSmartPCSC:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v3, "trigger_from_ipt_ui"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/PSService;->close:Z

    const/4 v2, 0x4

    sput v2, Lcom/android/settings/PSService;->CurrentStatus:I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.smartPCSC.complete"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v3, "ps_enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    :cond_4
    sget-object v2, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/FilterInputStream;->close()V

    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "SmartNS_PSService"

    const-string v3, "Dis.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v2, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/FilterOutputStream;->close()V

    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "SmartNS_PSService"

    const-string v3, "Dos.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v2, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "SmartNS_PSService"

    const-string v3, "mClient.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v2, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "SmartNS_PSService"

    const-string v3, "mServer.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "SmartNS_PSService"

    const-string v3, "Connection Closed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_a

    const-string v2, "SmartNS_PSService"

    const-string v3, "Stop Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    return-void

    :cond_b
    const/4 v2, 0x6

    if-eq v0, v2, :cond_d

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "SmartNS_PSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close Connection fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_d
    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, v2}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static FailIPTNotification(Landroid/content/Context;Z)V
    .locals 13

    const/4 v12, 0x0

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail notificaiton:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "WirelessSettings"

    invoke-virtual {p0, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v9, "trigger_from_ipt_ui"

    invoke-interface {v7, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v9, "smart_pcsc"

    invoke-interface {v7, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    const v2, 0x7f020200

    const v9, 0x7f0c0746

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0c0748

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v9, Lcom/android/settings/PSService;->IPT_Fail_Notioncation:Ljava/lang/String;

    invoke-interface {v1, v9, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_4

    invoke-static {p0, v12}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v9, 0x400

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v12, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput v2, v0, Landroid/app/Notification;->icon:I

    const/4 v9, 0x2

    iput v9, v0, Landroid/app/Notification;->flags:I

    iput-object v8, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v0, p0, v8, v4, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private GetPCNetwork()Z
    .locals 12

    :try_start_0
    sget-object v9, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_0

    new-instance v9, Ljava/io/DataInputStream;

    sget-object v10, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v9, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v9, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    if-eqz v9, :cond_13

    sget-object v9, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_13

    iget-boolean v9, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "SmartNS_PSService"

    const-string v10, "GetPCNetwork Start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_1
    sget-object v9, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v9, "SmartNS_PSService"

    const-string v10, "device no network"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    :goto_1
    iget-object v9, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    const-string v10, "WirelessSettings"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "smart_pcsc"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "device network:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " smartPCSC:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/settings/PSService;->runSmartPCSC:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v9, 0x3

    if-ne v5, v9, :cond_9

    iget-boolean v9, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "SmartNS_PSService"

    const-string v10, "PCNetwork Connected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v9, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "pc_network"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-boolean v9, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    if-eqz v9, :cond_7

    sget-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-eqz v9, :cond_7

    const/16 v9, 0x9

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v9, 0x1

    :goto_3
    return v9

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "device is connected:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Lcom/android/settings/PSService;->PSEnabled:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    sget-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-nez v9, :cond_4

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.PSActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v9, 0x1800

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v9, "ps_dialog_code"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_4
    iget-boolean v9, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v9, :cond_5

    const-string v9, "SmartNS_PSService"

    const-string v10, "GetPCNetwork fail: "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/16 v9, 0x9

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    iget-boolean v9, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GetPCNetwork: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    :try_start_3
    const-string v9, "customizedIPT"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    iget-object v9, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "smart_pcsc"

    sget-boolean v11, Lcom/android/settings/PSService;->runSmartPCSC:Z

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v9, 0x8

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    goto/16 :goto_2

    :cond_8
    const/16 v9, 0x9

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    goto/16 :goto_2

    :cond_9
    const/high16 v9, 0x4

    if-ne v5, v9, :cond_10

    iget-boolean v9, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v9, :cond_a

    const-string v9, "SmartNS_PSService"

    const-string v10, "PCNetwork Disconnected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v9, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "pc_network"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-boolean v9, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    if-eqz v9, :cond_e

    sget-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-eqz v9, :cond_e

    const/16 v9, 0x9

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    invoke-direct {p0}, Lcom/android/settings/PSService;->stopIPT()V

    const/4 v2, 0x0

    :goto_4
    sget-boolean v9, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v9, :cond_b

    const/16 v9, 0x8

    if-ge v2, v9, :cond_b

    sget-object v9, Lcom/android/settings/PSService;->pause:Landroid/os/ConditionVariable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v10, v11}, Landroid/os/ConditionVariable;->block(J)Z

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "retry: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isApnAvailable()Z

    move-result v9

    if-eqz v9, :cond_d

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v9, "apn_from"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/settings/SmartNetSharingApnDialog;

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v9, 0x1000

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_c
    :goto_5
    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_d
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.htc.android.startIS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    :cond_e
    sget-boolean v9, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    if-nez v9, :cond_f

    sget-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-eqz v9, :cond_f

    const/16 v9, 0x9

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_5

    :cond_f
    sget-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-nez v9, :cond_c

    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    iget-object v9, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "smart_pcsc"

    sget-boolean v11, Lcom/android/settings/PSService;->runSmartPCSC:Z

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v9, 0x8

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_5

    :cond_10
    sget-boolean v9, Lcom/android/settings/PSService;->PSEnabled:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    sget-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-nez v9, :cond_11

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.PSActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v9, 0x1800

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v9, "ps_dialog_code"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_11
    const/16 v9, 0x9

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    iget-boolean v9, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v9, :cond_12

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PC return wrong value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_13
    iget-boolean v9, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v9, :cond_14

    const-string v9, "SmartNS_PSService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DataInputStream = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; Client = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.method private InitSocket()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/16 v0, 0x1770

    const/16 v6, 0x7530

    :try_start_0
    sget-object v7, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    if-nez v7, :cond_4

    new-instance v7, Ljava/net/ServerSocket;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v8}, Ljava/net/ServerSocket;-><init>(II)V

    sput-object v7, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "SmartNS_PSService"

    const-string v8, "Server established"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v7, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v7, v6}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    sget-object v7, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v7

    sput-object v7, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    iget-boolean v7, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "SmartNS_PSService"

    const-string v8, "Client accepted"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v7, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    new-instance v7, Ljava/io/DataInputStream;

    sget-object v8, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v7, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/DataOutputStream;

    sget-object v8, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v7, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    iget-boolean v7, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "SmartNS_PSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB connection established, Server: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v9}, Ljava/net/ServerSocket;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Client: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DIS:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " DOS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    sget-object v7, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/net/ServerSocket;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v8}, Ljava/net/ServerSocket;-><init>(II)V

    sput-object v7, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    iget-boolean v7, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "SmartNS_PSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InitSocket: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/settings/PSService;->reTryConn:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v7, Lcom/android/settings/PSService;->USBPlugged:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "SmartNS_PSService"

    const-string v8, "InitSocket exception, but USB was unplugged, return"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    sget v7, Lcom/android/settings/PSService;->reTryConn:I

    if-gt v7, v10, :cond_7

    sget-boolean v7, Lcom/android/settings/PSService;->close:Z

    if-eq v7, v10, :cond_7

    sget v7, Lcom/android/settings/PSService;->reTryConn:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/settings/PSService;->reTryConn:I

    invoke-direct {p0}, Lcom/android/settings/PSService;->InitSocket()V

    goto :goto_1

    :cond_7
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-nez v5, :cond_9

    const-string v7, "SmartNS_PSService"

    const-string v8, "device no network"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v11, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    :goto_2
    sget-boolean v7, Lcom/android/settings/PSService;->PSEnabled:Z

    if-ne v7, v10, :cond_8

    sget-boolean v7, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-nez v7, :cond_8

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.PSActivity"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v7, 0x1800

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v7, "ps_dialog_code"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    :cond_8
    iget-object v7, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    const-string v8, "internet_sharing"

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "is_type"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/settings/PSService;->SetIPT0()V

    goto/16 :goto_1

    :cond_9
    const-string v7, "SmartNS_PSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "device is connected:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v10, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    goto :goto_2
.end method

.method private RecvNATComplete(Ljava/io/DataInputStream;)Z
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    sget-object v3, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartNS_PSService"

    const-string v4, "RecvNATComplete Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/high16 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "SmartNS_PSService"

    const-string v4, "RecvNATComplete pass"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x6

    sput v3, Lcom/android/settings/PSService;->CurrentStatus:I

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "SmartNS_PSService"

    const-string v4, "RecvNATComplete fail: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v3, 0x5

    sput v3, Lcom/android/settings/PSService;->CurrentStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "SmartNS_PSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecvNATComplete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    sget-object v3, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v3, :cond_2

    const-string v3, "SmartNS_PSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataInputStream = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; Client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SendHandShakeOK(Ljava/io/DataOutputStream;)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartNS_PSService"

    const-string v4, "SendHandShakeOK Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_4

    sget-object v3, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v3, :cond_4

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v4, "pc_network"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, -0x7ffd

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "SmartNS_PSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendHandShakeOK write"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/high16 v5, -0x7ffe

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/high16 v3, -0x7ffc

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "SmartNS_PSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendHandShakeOK:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sput v6, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "SmartNS_PSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataOnputStream = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; Client = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sput v6, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_1
.end method

.method private SendStartNetworkChecking(Ljava/io/DataOutputStream;)Z
    .locals 6

    const/4 v5, 0x5

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SmartNS_PSService"

    const-string v3, "SendNetworkChecking Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    sget-object v2, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v2, :cond_3

    const/high16 v2, -0x7ffe

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "SmartNS_PSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendNetworkChecking write"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/high16 v4, -0x7ffe

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x7

    sput v2, Lcom/android/settings/PSService;->CurrentStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "SmartNS_PSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendNetworkChecking:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sput v5, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "SmartNS_PSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataOnputStream = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Client = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sput v5, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_0
.end method

.method private SetIPT0()V
    .locals 1

    new-instance v0, Lcom/android/settings/PSService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/PSService$2;-><init>(Lcom/android/settings/PSService;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static SetIPTNotification(Landroid/content/Context;Z)V
    .locals 12

    const/4 v11, 0x0

    const-string v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    const v2, 0x7f0201ff

    const v9, 0x7f0c0746

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0c00ac

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "WirelessSettings"

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v9, Lcom/android/settings/PSService;->IPT_Notioncation:Ljava/lang/String;

    invoke-interface {v1, v9, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_1

    invoke-static {p0, v11}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v9, 0x400

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v11, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput v2, v0, Landroid/app/Notification;->icon:I

    const/4 v9, 0x2

    iput v9, v0, Landroid/app/Notification;->flags:I

    iput-object v8, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v0, p0, v8, v4, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const v9, 0x7f0c0548

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7d0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private SetIPdata()Z
    .locals 8

    const/16 v7, 0x7e

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "192.168.99."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit16 v6, v6, 0x80

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "255.255.255.0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "192.168.99."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    const-string v5, "net.usb0.ps.ip"

    invoke-static {v5, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "net.usb0.ps.mask"

    invoke-static {v5, v3}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "net.usb0.ps.gw"

    invoke-static {v5, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "net.usb0.ps.dns"

    invoke-static {v5, v0}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SmartNS_PSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set IP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "net.usb0.ps.ip"

    invoke-static {v7}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v5, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "SmartNS_PSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set Mask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "net.usb0.ps.mask"

    invoke-static {v7}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "SmartNS_PSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set Gateway: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "net.usb0.ps.gw"

    invoke-static {v7}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "SmartNS_PSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set DNS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "net.usb0.ps.dns"

    invoke-static {v7}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v5, 0x1

    return v5
.end method

.method private SetNDISData()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v1, "SmartNS_PSService"

    const-string v2, "NDIS flow run..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v5, Lcom/android/settings/PSService;->CurrentStatus:I

    sput-boolean v4, Lcom/android/settings/PSService;->IPTConnPass:Z

    const-string v1, "WirelessSettings"

    invoke-virtual {p0, v1, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ipt_connectpass"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput-boolean v4, Lcom/android/settings/PSService;->close:Z

    sput v4, Lcom/android/settings/PSService;->reTryConn:I

    :cond_0
    sget-boolean v1, Lcom/android/settings/PSService;->IPTConnPass:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/settings/PSService;->close:Z

    if-nez v1, :cond_b

    sget v1, Lcom/android/settings/PSService;->CurrentStatus:I

    if-ne v1, v5, :cond_5

    :try_start_0
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "SmartNS_PSService"

    const-string v2, "When SetNDIS data, USB was unplugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/PSService;->close:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/PSService;->SetIPdata()Z

    iget-object v1, p0, Lcom/android/settings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/service/HtcHardwareManager;->UsbMiscControl_IPT(I)I

    move-result v1

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(1) Pass"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v1, 0x5

    sput v1, Lcom/android/settings/PSService;->CurrentStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :goto_1
    sget v1, Lcom/android/settings/PSService;->CurrentStatus:I

    if-ne v1, v6, :cond_6

    invoke-direct {p0}, Lcom/android/settings/PSService;->InitSocket()V

    sget-object v1, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Lcom/android/settings/PSService;->RecvNATComplete(Ljava/io/DataInputStream;)Z

    :cond_6
    sget v1, Lcom/android/settings/PSService;->CurrentStatus:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    sget-object v1, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    invoke-direct {p0, v1}, Lcom/android/settings/PSService;->SendStartNetworkChecking(Ljava/io/DataOutputStream;)Z

    :cond_7
    sget v1, Lcom/android/settings/PSService;->CurrentStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    invoke-direct {p0}, Lcom/android/settings/PSService;->GetPCNetwork()Z

    :cond_8
    sget v1, Lcom/android/settings/PSService;->CurrentStatus:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    sget-object v1, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    invoke-direct {p0, v1}, Lcom/android/settings/PSService;->SendHandShakeOK(Ljava/io/DataOutputStream;)Z

    :try_start_1
    sget-boolean v1, Lcom/android/settings/PSService;->USBPlugged:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "SmartNS_PSService"

    const-string v2, "When SetNDIS data, USB was unplugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/PSService;->close:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sput v6, Lcom/android/settings/PSService;->CurrentStatus:I

    :goto_2
    iget-object v1, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "smart_pcsc"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_a
    sget v1, Lcom/android/settings/PSService;->CurrentStatus:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/PSService;->stopIPT()V

    :cond_b
    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "SmartNS_PSService"

    const-string v2, "NDIS flow end..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_c
    :try_start_2
    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_d

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(1) Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v1, 0x4

    sput v1, Lcom/android/settings/PSService;->CurrentStatus:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sput v5, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_1

    :cond_e
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/service/HtcHardwareManager;->UsbMiscControl_IPT(I)I

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(2) Pass"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/PSService;->IPTConnPass:Z

    iget-object v1, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ipt_connectpass"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.ipt.enabled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_10
    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_11

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(2) Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v1, 0x5

    sput v1, Lcom/android/settings/PSService;->CurrentStatus:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public static SetUSBNotification(Landroid/content/Context;Z)V
    .locals 14

    const/4 v13, 0x1

    const-string v10, "SmartNS_PSService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "usb notificaiton:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "WirelessSettings"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "has_spcsc"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v10, "customizedNS"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v10, "customizedML"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v10, "customizedIPT"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v6, 0x7f020207

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v10, Lcom/android/settings/PSService;->USB_Notioncation:Ljava/lang/String;

    invoke-interface {v5, v10, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/android/settings/PSService;->initNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v8, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/PSService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PSService;->SetNDISData()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/PSService;)Lcom/htc/service/HtcHardwareManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/PSService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PSService;->CloseConn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/PSService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/PSService;->DBG:Z

    return v0
.end method

.method private static initNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 9

    const/4 v8, 0x0

    const v0, 0x7f020207

    const v6, 0x7f0c0755

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c0756

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x400

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput v0, v3, Landroid/app/Notification;->icon:I

    const/4 v6, 0x2

    iput v6, v3, Landroid/app/Notification;->flags:I

    iput-object v5, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v3, p0, v5, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v3
.end method

.method private stopIPT()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmartNS_PSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive Stop IPT, Current PSEnabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/PSService;->PSEnabled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PSService;->SetIPT0()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    sget v0, Lcom/android/settings/PSService;->defaultType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/settings/PSService;->defaultType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v1, "hasTethered"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/PSService;->IPTConnPass:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 22

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "onReceive:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "htchardware"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/service/HtcHardwareManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "WirelessSettings"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "ps_enabled"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "ipt_connectpass"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->IPTConnPass:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.ats.usbui.DISABLE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string v18, "UIDisable"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "runATS"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Run ATS:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "tethering_blocked"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "runATS"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_1

    if-eqz v6, :cond_4

    :cond_1
    if-eqz v6, :cond_3

    const-string v18, "SmartNS_PSService"

    const-string v19, "block from 3LM"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    :goto_2
    return v18

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const-string v18, "SmartNS_PSService"

    const-string v19, "run ATS return"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "isCustomized"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/TetherSettings;->readCustomizationData(Landroid/content/Context;)V

    const-string v18, "SmartNS_PSService"

    const-string v19, "Customization change"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    sget-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v18, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/PSService;->DBG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const-string v18, "SmartNS_PSService"

    const-string v19, "User quick boot, set the correct notifications"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto :goto_2

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.android.stop_IPT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/PSService;->DBG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Receive Stop IPT, Current PSEnabled= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/settings/PSService;->PSEnabled:Z

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.android.startIS.Fail"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/PSService;->DBG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Receive Start IS fail, Current PSEnabled= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/settings/PSService;->PSEnabled:Z

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v18, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.is.enabled"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/PSService;->DBG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Receive Enable IS, Current PSEnabled= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/settings/PSService;->PSEnabled:Z

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v18, :cond_f

    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "ps_enabled"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "com.htc.ipt.disabled"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.USB_HTC_CARMODE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/HtcFeatureList;->hasMirrorLink(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_11
    const-string v18, "connected"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Car PC connected:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "sns_type"

    const/16 v20, 0x6

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/settings/PSService;->IPT_Notioncation:Ljava/lang/String;

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/settings/PSService;->IPT_Fail_Notioncation:Ljava/lang/String;

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/settings/PSService;->USB_Notioncation:Ljava/lang/String;

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "notification:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "fail notification:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "usb notification:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.mdm.usb.intent.MDM_USB_ALLOW"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.mdm.usb.intent.MDM_TETHERING_ALLOW"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    :cond_15
    const/4 v4, 0x1

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.mdm.usb.intent.MDM_USB_ALLOW"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "allowed"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "mdm_usb"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "mdm_Tethering"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :cond_16
    :goto_3
    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MDM_USB_allow:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " MDM_Tethering_allow:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_17

    if-nez v3, :cond_18

    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.mdm.usb.intent.MDM_TETHERING_ALLOW"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "allowed"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "mdm_Tethering"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "mdm_usb"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "sns_type"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    sput v18, Lcom/android/settings/PSService;->defaultType:I

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " defaultType:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/settings/PSService;->defaultType:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "android.intent.action.USER_PRESENT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014

    cmpl-double v18, v18, v20

    if-lez v18, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "kguard_locked"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_1b

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.htc.intent.action.KEY_GUARD_UNLOCK"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "kguard_locked"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.android.start_IPT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.KEY_GUARD_UNLOCK"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_38

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "mdm_Tethering"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "mdm_usb"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->USBPlugged:Z

    if-eqz v3, :cond_1e

    if-nez v4, :cond_20

    :cond_1e
    sget-boolean v18, Lcom/android/settings/PSService;->USBPlugged:Z

    if-nez v18, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "usb_tethering_auto_enable"

    invoke-interface/range {v18 .. v19}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "has_spcsc"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->smartNSChecked:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "usb_tethering_auto_enable"

    sget-boolean v20, Lcom/android/settings/PSService;->smartNSChecked:Z

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-boolean v18, Lcom/android/settings/PSService;->smartNSChecked:Z

    if-eqz v18, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "sns_type"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "sns_position"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_4
    sget v18, Lcom/android/settings/PSService;->defaultType:I

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_25

    sget-boolean v18, Lcom/android/settings/PSService;->USBPlugged:Z

    if-eqz v18, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "mlink_enabled"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "sns_type"

    const/16 v20, 0x6

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v18, "SmartNS_PSService"

    const-string v19, "enable Mirror link"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "kguard_locked"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_21
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "sns_type"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "sns_position"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_4

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "usb_tethering_auto_enable"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->smartNSChecked:Z

    goto/16 :goto_4

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "sns_position"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "sns_type"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v18, "SmartNS_PSService"

    const-string v19, "disable Mirror link"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    goto/16 :goto_5

    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_27

    sget-boolean v18, Lcom/android/settings/PSService;->USBPlugged:Z

    if-eqz v18, :cond_27

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014

    cmpl-double v18, v18, v20

    if-lez v18, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "keyguard"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    if-eqz v11, :cond_26

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v18

    if-eqz v18, :cond_26

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v18

    if-eqz v18, :cond_26

    const/4 v10, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "kguard_locked"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "KeyGuard locked:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "KeyGuard is secured:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_26
    const/4 v10, 0x0

    goto :goto_6

    :cond_27
    sget-boolean v18, Lcom/android/settings/PSService;->USBPlugged:Z

    if-eqz v18, :cond_2d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.KEY_GUARD_UNLOCK"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_29

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/settings/PSService;->First_Get_PCSC_Intent:Ljava/lang/String;

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    sget-object v19, Lcom/android/settings/PSService;->First_Get_PCSC_Intent:Ljava/lang/String;

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/PSService;->DBG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2a

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "USB Plugged, Set USBPlugged=  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/settings/PSService;->USBPlugged:Z

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "PSenabled:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/settings/PSService;->PSEnabled:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    sget v18, Lcom/android/settings/PSService;->defaultType:I

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_30

    sget v18, Lcom/android/settings/PSService;->defaultType:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_30

    sget-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2c

    sget-boolean v18, Lcom/android/settings/PSService;->smartNSChecked:Z

    if-nez v18, :cond_2b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2c

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.KEY_GUARD_UNLOCK"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_30

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    sget-object v19, Lcom/android/settings/PSService;->First_Get_PCSC_Intent:Ljava/lang/String;

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2e
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/PSService;->USBPlugged:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/PSService;->DBG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2f

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "USB Unplugged, Set PSEnabled= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/settings/PSService;->PSEnabled:Z

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " disable MTP"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_30
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "ps_enabled"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.android.start_IPT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_31

    sget v18, Lcom/android/settings/PSService;->defaultType:I

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "trigger_from_ipt_ui"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->triggerFromIPT_UI:Z

    :goto_7
    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "triggerFromIPT_UI:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/settings/PSService;->triggerFromIPT_UI:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_32

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.KEY_GUARD_UNLOCK"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_33

    :cond_32
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/PSService;->triggerFromIPT_UI:Z

    :cond_33
    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "triggerFromIPT_UI:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/settings/PSService;->triggerFromIPT_UI:Z

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v18, Lcom/android/settings/PSService;->defaultType:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "smart_pcsc"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/settings/PSService;->runSmartPCSC:Z

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.htc.android.smartPCSC"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/PSService;->DBG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_35

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PSEnabled = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-boolean v20, Lcom/android/settings/PSService;->PSEnabled:Z

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    sget-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v18, :cond_36

    sget-boolean v18, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-nez v18, :cond_36

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.htc.android.opening_IPT"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "notshow_notice"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->Notshow_notice:Z

    sget-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_38

    :try_start_0
    sget-boolean v18, Lcom/android/settings/PSService;->triggerFromIPT_UI:Z

    if-eqz v18, :cond_37

    sget-boolean v18, Lcom/android/settings/PSService;->Notshow_notice:Z

    if-nez v18, :cond_37

    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    const-string v19, "com.android.settings"

    const-string v20, "com.android.settings.PSActivity"

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    const/high16 v18, 0x1800

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v18, "ps_dialog_code"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_37
    const v8, 0x7f020207

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/PSService;->initNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    new-instance v18, Lcom/android/settings/PSService$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/PSService$1;-><init>(Lcom/android/settings/PSService;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_38
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    const/16 v18, 0x3

    goto/16 :goto_2

    :cond_39
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/PSService;->triggerFromIPT_UI:Z

    goto/16 :goto_7

    :catch_0
    move-exception v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/PSService;->DBG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3a

    const-string v18, "SmartNS_PSService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "thread exception = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    goto :goto_8
.end method
