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

    .prologue
    const/4 v1, 0x0

    .line 76
    const-string v0, "IPT_Notioncation"

    sput-object v0, Lcom/android/settings/PSService;->IPT_Notioncation:Ljava/lang/String;

    .line 77
    const-string v0, "IPT_Fail_Notioncation"

    sput-object v0, Lcom/android/settings/PSService;->IPT_Fail_Notioncation:Ljava/lang/String;

    .line 78
    const-string v0, "First_Get_PCSC_intent"

    sput-object v0, Lcom/android/settings/PSService;->First_Get_PCSC_Intent:Ljava/lang/String;

    .line 79
    const-string v0, "USB_Notioncation"

    sput-object v0, Lcom/android/settings/PSService;->USB_Notioncation:Ljava/lang/String;

    .line 106
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/settings/PSService;->pause:Landroid/os/ConditionVariable;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    .line 109
    sput-boolean v1, Lcom/android/settings/PSService;->close:Z

    .line 110
    sput-boolean v1, Lcom/android/settings/PSService;->Notshow_notice:Z

    .line 111
    sput-boolean v1, Lcom/android/settings/PSService;->IPTConnPass:Z

    .line 112
    sput-boolean v1, Lcom/android/settings/PSService;->USBPlugged:Z

    .line 113
    sput-boolean v1, Lcom/android/settings/PSService;->PSEnabled:Z

    .line 114
    sput-boolean v1, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    .line 115
    sput-boolean v1, Lcom/android/settings/PSService;->runSmartPCSC:Z

    .line 116
    sput-boolean v1, Lcom/android/settings/PSService;->smartNSChecked:Z

    .line 117
    sput-boolean v1, Lcom/android/settings/PSService;->triggerFromIPT_UI:Z

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/PSService;->mSyncLock:Ljava/lang/Object;

    .line 124
    sput v1, Lcom/android/settings/PSService;->reTryConn:I

    .line 125
    sput v1, Lcom/android/settings/PSService;->defaultType:I

    .line 127
    const/4 v0, 0x4

    sput v0, Lcom/android/settings/PSService;->CurrentStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PSService;->DBG:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    .line 41
    return-void
.end method

.method private CloseConn()V
    .locals 5

    .prologue
    .line 864
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v3, "ps_enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/PSService;->PSEnabled:Z

    .line 865
    iget-object v2, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v3, "smart_pcsc"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/PSService;->runSmartPCSC:Z

    .line 867
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SmartNS_PSService"

    const-string v3, "Close all socket related, force to jump out handshaking process, inform PCSC to switch to other status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
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

    .line 869
    :cond_1
    sget-boolean v2, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v2, :cond_2

    .line 871
    iget-object v2, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v3, "sns_type"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 874
    .local v0, defaultType:I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.ipt.disabled"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 875
    sget-boolean v2, Lcom/android/settings/PSService;->IPTConnPass:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 881
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "SmartNS_PSService"

    const-string v3, "UsbMiscControl_IPT(0), Send: com.htc.ipt.disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    .end local v0           #defaultType:I
    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/PSService;->runSmartPCSC:Z

    .line 886
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/PSService;->PSEnabled:Z

    .line 887
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/PSService;->IPTConnPass:Z

    .line 888
    iget-object v2, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v3, "ps_enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 889
    iget-object v2, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v3, "ipt_connectpass"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 890
    iget-object v2, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v3, "smart_pcsc"

    sget-boolean v4, Lcom/android/settings/PSService;->runSmartPCSC:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 891
    iget-object v2, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v3, "trigger_from_ipt_ui"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 892
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/PSService;->close:Z

    .line 893
    const/4 v2, 0x4

    sput v2, Lcom/android/settings/PSService;->CurrentStatus:I

    .line 894
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.android.smartPCSC.complete"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 896
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v3, "ps_enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 897
    :cond_3
    iget-object v2, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 898
    iget-object v2, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 901
    :cond_4
    sget-object v2, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    if-eqz v2, :cond_5

    .line 902
    sget-object v2, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 903
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    .line 904
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "SmartNS_PSService"

    const-string v3, "Dis.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_5
    sget-object v2, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_6

    .line 907
    sget-object v2, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 908
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    .line 909
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "SmartNS_PSService"

    const-string v3, "Dos.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_6
    sget-object v2, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v2, :cond_7

    .line 912
    sget-object v2, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 913
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    .line 914
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "SmartNS_PSService"

    const-string v3, "mClient.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_7
    sget-object v2, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    if-eqz v2, :cond_8

    .line 917
    sget-object v2, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V

    .line 918
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    .line 919
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "SmartNS_PSService"

    const-string v3, "mServer.close()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_8
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "SmartNS_PSService"

    const-string v3, "Connection Closed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 923
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_a

    const-string v2, "SmartNS_PSService"

    const-string v3, "Stop Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_a
    :goto_1
    return-void

    .line 876
    .restart local v0       #defaultType:I
    :cond_b
    const/4 v2, 0x6

    if-eq v0, v2, :cond_d

    .line 877
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 926
    .end local v0           #defaultType:I
    :catch_0
    move-exception v1

    .line 927
    .local v1, e:Ljava/lang/Exception;
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

    .line 928
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 879
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #defaultType:I
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
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v12, 0x0

    .line 1178
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

    .line 1180
    const-string v9, "WirelessSettings"

    invoke-virtual {p0, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1183
    .local v7, sp:Landroid/content/SharedPreferences;
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

    .line 1215
    :cond_1
    :goto_0
    return-void

    .line 1186
    :cond_2
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1187
    .local v5, notificationManager:Landroid/app/NotificationManager;
    const v2, 0x7f020200

    .line 1188
    .local v2, id:I
    const v9, 0x7f0c0746

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1189
    .local v8, title:Ljava/lang/String;
    const v9, 0x7f0c0748

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1191
    .local v4, message:Ljava/lang/String;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1192
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v9, Lcom/android/settings/PSService;->IPT_Fail_Notioncation:Ljava/lang/String;

    invoke-interface {v1, v9, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1194
    if-eqz p1, :cond_4

    invoke-static {p0, v12}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 1198
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 1199
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1201
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1203
    const/high16 v9, 0x400

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1204
    invoke-static {p0, v12, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1205
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1206
    .local v0, FIPTNotification:Landroid/app/Notification;
    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 1207
    const/4 v9, 0x2

    iput v9, v0, Landroid/app/Notification;->flags:I

    .line 1208
    iput-object v8, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1209
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroid/app/Notification;->when:J

    .line 1210
    invoke-virtual {v0, p0, v8, v4, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1211
    invoke-virtual {v5, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1195
    .end local v0           #FIPTNotification:Landroid/app/Notification;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #pendingIntent:Landroid/app/PendingIntent;
    :cond_4
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    goto :goto_1

    .line 1213
    :cond_5
    invoke-virtual {v5, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method private GetPCNetwork()Z
    .locals 12

    .prologue
    .line 958
    :try_start_0
    sget-object v9, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_0

    .line 959
    new-instance v9, Ljava/io/DataInputStream;

    sget-object v10, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v9, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :cond_0
    :goto_0
    sget-object v9, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    if-eqz v9, :cond_13

    sget-object v9, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_13

    .line 968
    iget-boolean v9, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "SmartNS_PSService"

    const-string v10, "GetPCNetwork Start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_1
    :try_start_1
    sget-object v9, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 972
    .local v5, i:I
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/settings/PSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 973
    .local v1, cmg:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 975
    .local v7, netInfo:Landroid/net/NetworkInfo;
    if-nez v7, :cond_3

    .line 976
    const-string v9, "SmartNS_PSService"

    const-string v10, "device no network"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    .line 984
    :goto_1
    iget-object v9, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    const-string v10, "WirelessSettings"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 985
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v9, "smart_pcsc"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sput-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    .line 987
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

    .line 989
    const/high16 v9, 0x3

    if-ne v5, v9, :cond_9

    .line 991
    iget-boolean v9, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "SmartNS_PSService"

    const-string v10, "PCNetwork Connected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_2
    iget-object v9, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "pc_network"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 995
    sget-boolean v9, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    if-eqz v9, :cond_7

    sget-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-eqz v9, :cond_7

    .line 997
    const/16 v9, 0x9

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1017
    :goto_2
    const/4 v9, 0x1

    .line 1103
    .end local v1           #cmg:Landroid/net/ConnectivityManager;
    .end local v5           #i:I
    .end local v7           #netInfo:Landroid/net/NetworkInfo;
    .end local v8           #sp:Landroid/content/SharedPreferences;
    :goto_3
    return v9

    .line 961
    :catch_0
    move-exception v4

    .line 963
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 980
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #cmg:Landroid/net/ConnectivityManager;
    .restart local v5       #i:I
    .restart local v7       #netInfo:Landroid/net/NetworkInfo;
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

    .line 981
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1086
    .end local v1           #cmg:Landroid/net/ConnectivityManager;
    .end local v5           #i:I
    .end local v7           #netInfo:Landroid/net/NetworkInfo;
    :catch_1
    move-exception v4

    .line 1087
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1089
    sget-boolean v9, Lcom/android/settings/PSService;->PSEnabled:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    sget-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-nez v9, :cond_4

    .line 1090
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.PSActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1091
    .local v6, mintent:Landroid/content/Intent;
    const/high16 v9, 0x1800

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1092
    const-string v9, "ps_dialog_code"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    invoke-virtual {p0, v6}, Lcom/android/settings/PSService;->startActivity(Landroid/content/Intent;)V

    .line 1096
    .end local v6           #mintent:Landroid/content/Intent;
    :cond_4
    iget-boolean v9, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v9, :cond_5

    const-string v9, "SmartNS_PSService"

    const-string v10, "GetPCNetwork fail: "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_5
    const/16 v9, 0x9

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    .line 1098
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

    .line 1099
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 1002
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #cmg:Landroid/net/ConnectivityManager;
    .restart local v5       #i:I
    .restart local v7       #netInfo:Landroid/net/NetworkInfo;
    .restart local v8       #sp:Landroid/content/SharedPreferences;
    :cond_7
    :try_start_3
    const-string v9, "customizedIPT"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1004
    .local v3, customizedIPT:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1005
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    .line 1006
    iget-object v9, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "smart_pcsc"

    sget-boolean v11, Lcom/android/settings/PSService;->runSmartPCSC:Z

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1007
    const/16 v9, 0x8

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    goto/16 :goto_2

    .line 1011
    :cond_8
    const/16 v9, 0x9

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    goto/16 :goto_2

    .line 1019
    .end local v3           #customizedIPT:Ljava/lang/Boolean;
    :cond_9
    const/high16 v9, 0x4

    if-ne v5, v9, :cond_10

    .line 1021
    iget-boolean v9, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v9, :cond_a

    const-string v9, "SmartNS_PSService"

    const-string v10, "PCNetwork Disconnected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_a
    iget-object v9, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "pc_network"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1026
    sget-boolean v9, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    if-eqz v9, :cond_e

    sget-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-eqz v9, :cond_e

    .line 1028
    const/16 v9, 0x9

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    .line 1029
    invoke-direct {p0}, Lcom/android/settings/PSService;->stopIPT()V

    .line 1031
    const/4 v2, 0x0

    .line 1032
    .local v2, count:I
    :goto_4
    sget-boolean v9, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v9, :cond_b

    const/16 v9, 0x8

    if-ge v2, v9, :cond_b

    .line 1034
    sget-object v9, Lcom/android/settings/PSService;->pause:Landroid/os/ConditionVariable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v9, v10, v11}, Landroid/os/ConditionVariable;->block(J)Z

    .line 1035
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

    .line 1036
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1040
    :cond_b
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isApnAvailable()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1041
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1042
    .local v0, apnIntent:Landroid/content/Intent;
    const-string v9, "apn_from"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1043
    iget-object v9, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/settings/SmartNetSharingApnDialog;

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1044
    const/high16 v9, 0x1000

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1045
    iget-object v9, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1067
    .end local v0           #apnIntent:Landroid/content/Intent;
    .end local v2           #count:I
    :cond_c
    :goto_5
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 1047
    .restart local v2       #count:I
    :cond_d
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.htc.android.startIS"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/android/settings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 1053
    .end local v2           #count:I
    :cond_e
    sget-boolean v9, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    if-nez v9, :cond_f

    sget-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-eqz v9, :cond_f

    .line 1055
    const/16 v9, 0x9

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_5

    .line 1057
    :cond_f
    sget-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-nez v9, :cond_c

    .line 1058
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    .line 1059
    iget-object v9, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v10, "smart_pcsc"

    sget-boolean v11, Lcom/android/settings/PSService;->runSmartPCSC:Z

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1060
    const/16 v9, 0x8

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_5

    .line 1071
    :cond_10
    sget-boolean v9, Lcom/android/settings/PSService;->PSEnabled:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    sget-boolean v9, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-nez v9, :cond_11

    .line 1072
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.PSActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1073
    .restart local v6       #mintent:Landroid/content/Intent;
    const/high16 v9, 0x1800

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1074
    const-string v9, "ps_dialog_code"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1075
    invoke-virtual {p0, v6}, Lcom/android/settings/PSService;->startActivity(Landroid/content/Intent;)V

    .line 1077
    .end local v6           #mintent:Landroid/content/Intent;
    :cond_11
    const/16 v9, 0x9

    sput v9, Lcom/android/settings/PSService;->CurrentStatus:I

    .line 1079
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

    .line 1081
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1102
    .end local v1           #cmg:Landroid/net/ConnectivityManager;
    .end local v5           #i:I
    .end local v7           #netInfo:Landroid/net/NetworkInfo;
    .end local v8           #sp:Landroid/content/SharedPreferences;
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

    .line 1103
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.method private InitSocket()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 731
    const/16 v0, 0x1770

    .line 732
    .local v0, SERVICE_PORT_NUMBER:I
    const/16 v6, 0x7530

    .line 735
    .local v6, soTimeOut:I
    :try_start_0
    sget-object v7, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    if-nez v7, :cond_4

    new-instance v7, Ljava/net/ServerSocket;

    const/4 v8, 0x3

    invoke-direct {v7, v0, v8}, Ljava/net/ServerSocket;-><init>(II)V

    sput-object v7, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    .line 738
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "SmartNS_PSService"

    const-string v8, "Server established"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_1
    sget-object v7, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v7, v6}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 741
    sget-object v7, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v7

    sput-object v7, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    .line 742
    iget-boolean v7, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "SmartNS_PSService"

    const-string v8, "Client accepted"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_2
    sget-object v7, Lcom/android/settings/PSService;->mServer:Ljava/net/ServerSocket;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 746
    new-instance v7, Ljava/io/DataInputStream;

    sget-object v8, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v7, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    .line 749
    new-instance v7, Ljava/io/DataOutputStream;

    sget-object v8, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v7, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    .line 750
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

    .line 834
    :cond_3
    :goto_1
    return-void

    .line 736
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

    .line 754
    :catch_0
    move-exception v3

    .line 755
    .local v3, e:Ljava/lang/Exception;
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

    .line 756
    :cond_5
    sget-boolean v7, Lcom/android/settings/PSService;->USBPlugged:Z

    if-nez v7, :cond_6

    .line 757
    iget-boolean v7, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "SmartNS_PSService"

    const-string v8, "InitSocket exception, but USB was unplugged, return"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 761
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

    .line 765
    :cond_7
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/PSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 766
    .local v1, cmg:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 768
    .local v5, netInfo:Landroid/net/NetworkInfo;
    if-nez v5, :cond_9

    .line 769
    const-string v7, "SmartNS_PSService"

    const-string v8, "device no network"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sput-boolean v11, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    .line 777
    :goto_2
    sget-boolean v7, Lcom/android/settings/PSService;->PSEnabled:Z

    if-ne v7, v10, :cond_8

    sget-boolean v7, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-nez v7, :cond_8

    .line 778
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.PSActivity"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 779
    .local v4, mintent:Landroid/content/Intent;
    const/high16 v7, 0x1800

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 780
    const-string v7, "ps_dialog_code"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 781
    invoke-virtual {p0, v4}, Lcom/android/settings/PSService;->startActivity(Landroid/content/Intent;)V

    .line 785
    .end local v4           #mintent:Landroid/content/Intent;
    :cond_8
    iget-object v7, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    const-string v8, "internet_sharing"

    invoke-virtual {v7, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "is_type"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 822
    .local v2, defaultType:I
    invoke-direct {p0}, Lcom/android/settings/PSService;->SetIPT0()V

    goto/16 :goto_1

    .line 773
    .end local v2           #defaultType:I
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

    .line 774
    sput-boolean v10, Lcom/android/settings/PSService;->isDeviceNetworkConnected:Z

    goto :goto_2
.end method

.method private RecvNATComplete(Ljava/io/DataInputStream;)Z
    .locals 6
    .parameter "dis"

    .prologue
    const/4 v2, 0x0

    .line 671
    if-eqz p1, :cond_5

    sget-object v3, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v3, :cond_5

    .line 672
    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartNS_PSService"

    const-string v4, "RecvNATComplete Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 677
    .local v1, i:I
    const/high16 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 678
    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "SmartNS_PSService"

    const-string v4, "RecvNATComplete pass"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_1
    const/4 v3, 0x6

    sput v3, Lcom/android/settings/PSService;->CurrentStatus:I

    .line 680
    const/4 v2, 0x1

    .line 694
    .end local v1           #i:I
    :cond_2
    :goto_0
    return v2

    .line 683
    .restart local v1       #i:I
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "SmartNS_PSService"

    const-string v4, "RecvNATComplete fail: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_4
    const/4 v3, 0x5

    sput v3, Lcom/android/settings/PSService;->CurrentStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 688
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Ljava/lang/Exception;
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

    .line 693
    .end local v0           #e:Ljava/lang/Exception;
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
    .parameter "dos"

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x0

    .line 1109
    iget-boolean v3, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SmartNS_PSService"

    const-string v4, "SendHandShakeOK Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_0
    if-eqz p1, :cond_4

    sget-object v3, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v3, :cond_4

    .line 1113
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v4, "pc_network"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1114
    .local v0, connected:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1115
    const/high16 v3, -0x7ffd

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1119
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

    .line 1133
    :cond_1
    const/4 v2, 0x1

    .end local v0           #connected:Ljava/lang/Boolean;
    :goto_1
    return v2

    .line 1117
    .restart local v0       #connected:Ljava/lang/Boolean;
    :cond_2
    const/high16 v3, -0x7ffc

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1121
    .end local v0           #connected:Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 1122
    .local v1, e:Ljava/lang/Exception;
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

    .line 1123
    :cond_3
    sput v6, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_1

    .line 1128
    .end local v1           #e:Ljava/lang/Exception;
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

    .line 1129
    :cond_5
    sput v6, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_1
.end method

.method private SendStartNetworkChecking(Ljava/io/DataOutputStream;)Z
    .locals 6
    .parameter "dos"

    .prologue
    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 933
    iget-boolean v2, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SmartNS_PSService"

    const-string v3, "SendNetworkChecking Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_0
    if-eqz p1, :cond_3

    sget-object v2, Lcom/android/settings/PSService;->mClient:Ljava/net/Socket;

    if-eqz v2, :cond_3

    .line 936
    const/high16 v2, -0x7ffe

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 938
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

    .line 939
    :cond_1
    const/4 v2, 0x7

    sput v2, Lcom/android/settings/PSService;->CurrentStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, e:Ljava/lang/Exception;
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

    .line 942
    :cond_2
    sput v5, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_0

    .line 947
    .end local v0           #e:Ljava/lang/Exception;
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

    .line 948
    :cond_4
    sput v5, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_0
.end method

.method private SetIPT0()V
    .locals 1

    .prologue
    .line 838
    new-instance v0, Lcom/android/settings/PSService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/PSService$2;-><init>(Lcom/android/settings/PSService;)V

    invoke-virtual {v0}, Lcom/android/settings/PSService$2;->start()V

    .line 859
    return-void
.end method

.method public static SetIPTNotification(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v11, 0x0

    .line 1138
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1139
    .local v5, notificationManager:Landroid/app/NotificationManager;
    const v2, 0x7f0201ff

    .line 1140
    .local v2, id:I
    const v9, 0x7f0c0746

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1141
    .local v8, title:Ljava/lang/String;
    const v9, 0x7f0c00ac

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1143
    .local v4, message:Ljava/lang/String;
    const-string v9, "WirelessSettings"

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1144
    .local v7, sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1146
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v9, Lcom/android/settings/PSService;->IPT_Notioncation:Ljava/lang/String;

    invoke-interface {v1, v9, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1148
    if-eqz p1, :cond_1

    invoke-static {p0, v11}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 1153
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 1154
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1157
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "com.android.settings"

    const-string v10, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    const/high16 v9, 0x1000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1159
    const/high16 v9, 0x400

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1160
    invoke-static {p0, v11, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1162
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1163
    .local v0, IPTNotification:Landroid/app/Notification;
    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 1164
    const/4 v9, 0x2

    iput v9, v0, Landroid/app/Notification;->flags:I

    .line 1165
    iput-object v8, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1166
    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroid/app/Notification;->when:J

    .line 1167
    invoke-virtual {v0, p0, v8, v4, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1168
    invoke-virtual {v5, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1169
    const v9, 0x7f0c0548

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7d0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1174
    .end local v0           #IPTNotification:Landroid/app/Notification;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #pendingIntent:Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 1149
    :cond_1
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1172
    :cond_2
    invoke-virtual {v5, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private SetIPdata()Z
    .locals 8

    .prologue
    const/16 v7, 0x7e

    .line 699
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 700
    .local v4, rd:Ljava/util/Random;
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

    .line 701
    .local v2, ip:Ljava/lang/String;
    const-string v3, "255.255.255.0"

    .line 703
    .local v3, mask:Ljava/lang/String;
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

    .line 704
    .local v0, DNS:Ljava/lang/String;
    move-object v1, v0

    .line 706
    .local v1, gateway:Ljava/lang/String;
    const-string v5, "net.usb0.ps.ip"

    invoke-static {v5, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v5, "net.usb0.ps.mask"

    invoke-static {v5, v3}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v5, "net.usb0.ps.gw"

    invoke-static {v5, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v5, "net.usb0.ps.dns"

    invoke-static {v5, v0}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
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

    .line 712
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

    .line 713
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

    .line 714
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

    .line 715
    :cond_3
    const/4 v5, 0x1

    return v5
.end method

.method private SetNDISData()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 578
    const-string v1, "SmartNS_PSService"

    const-string v2, "NDIS flow run..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    sput v5, Lcom/android/settings/PSService;->CurrentStatus:I

    .line 580
    sput-boolean v4, Lcom/android/settings/PSService;->IPTConnPass:Z

    .line 582
    const-string v1, "WirelessSettings"

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/PSService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    .line 583
    iget-object v1, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    .line 584
    iget-object v1, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ipt_connectpass"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 585
    sput-boolean v4, Lcom/android/settings/PSService;->close:Z

    .line 587
    sput v4, Lcom/android/settings/PSService;->reTryConn:I

    .line 588
    :cond_0
    sget-boolean v1, Lcom/android/settings/PSService;->IPTConnPass:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/settings/PSService;->close:Z

    if-nez v1, :cond_b

    .line 589
    sget v1, Lcom/android/settings/PSService;->CurrentStatus:I

    if-ne v1, v5, :cond_5

    .line 593
    :try_start_0
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v1

    if-nez v1, :cond_3

    .line 594
    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "SmartNS_PSService"

    const-string v2, "When SetNDIS data, USB was unplugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/PSService;->close:Z

    .line 666
    :cond_2
    :goto_0
    return-void

    .line 598
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/PSService;->SetIPdata()Z

    .line 599
    iget-object v1, p0, Lcom/android/settings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/service/HtcHardwareManager;->UsbMiscControl_IPT(I)I

    move-result v1

    if-nez v1, :cond_c

    .line 600
    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(1) Pass"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_4
    const/4 v1, 0x5

    sput v1, Lcom/android/settings/PSService;->CurrentStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 611
    :cond_5
    :goto_1
    sget v1, Lcom/android/settings/PSService;->CurrentStatus:I

    if-ne v1, v6, :cond_6

    .line 612
    invoke-direct {p0}, Lcom/android/settings/PSService;->InitSocket()V

    .line 613
    sget-object v1, Lcom/android/settings/PSService;->Dis:Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Lcom/android/settings/PSService;->RecvNATComplete(Ljava/io/DataInputStream;)Z

    .line 616
    :cond_6
    sget v1, Lcom/android/settings/PSService;->CurrentStatus:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 617
    sget-object v1, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    invoke-direct {p0, v1}, Lcom/android/settings/PSService;->SendStartNetworkChecking(Ljava/io/DataOutputStream;)Z

    .line 620
    :cond_7
    sget v1, Lcom/android/settings/PSService;->CurrentStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 622
    invoke-direct {p0}, Lcom/android/settings/PSService;->GetPCNetwork()Z

    .line 626
    :cond_8
    sget v1, Lcom/android/settings/PSService;->CurrentStatus:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    .line 627
    sget-object v1, Lcom/android/settings/PSService;->Dos:Ljava/io/DataOutputStream;

    invoke-direct {p0, v1}, Lcom/android/settings/PSService;->SendHandShakeOK(Ljava/io/DataOutputStream;)Z

    .line 630
    :try_start_1
    sget-boolean v1, Lcom/android/settings/PSService;->USBPlugged:Z

    if-nez v1, :cond_e

    .line 631
    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "SmartNS_PSService"

    const-string v2, "When SetNDIS data, USB was unplugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_9
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/PSService;->close:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 651
    sput v6, Lcom/android/settings/PSService;->CurrentStatus:I

    .line 654
    .end local v0           #e:Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "smart_pcsc"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 658
    :cond_a
    sget v1, Lcom/android/settings/PSService;->CurrentStatus:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 659
    invoke-direct {p0}, Lcom/android/settings/PSService;->stopIPT()V

    .line 665
    :cond_b
    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "SmartNS_PSService"

    const-string v2, "NDIS flow end..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 603
    :cond_c
    :try_start_2
    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_d

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(1) Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_d
    const/4 v1, 0x4

    sput v1, Lcom/android/settings/PSService;->CurrentStatus:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 606
    :catch_1
    move-exception v0

    .line 607
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 608
    sput v5, Lcom/android/settings/PSService;->CurrentStatus:I

    goto :goto_1

    .line 636
    .end local v0           #e:Ljava/lang/Exception;
    :cond_e
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/service/HtcHardwareManager;->UsbMiscControl_IPT(I)I

    move-result v1

    if-nez v1, :cond_10

    .line 637
    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(2) Pass"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_f
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/PSService;->IPTConnPass:Z

    .line 639
    iget-object v1, p0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ipt_connectpass"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 640
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.ipt.enabled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 641
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    goto :goto_2

    .line 645
    :cond_10
    iget-boolean v1, p0, Lcom/android/settings/PSService;->DBG:Z

    if-eqz v1, :cond_11

    const-string v1, "SmartNS_PSService"

    const-string v2, "UsbMiscControl_IPT(2) Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_11
    const/4 v1, 0x5

    sput v1, Lcom/android/settings/PSService;->CurrentStatus:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public static SetUSBNotification(Landroid/content/Context;Z)V
    .locals 14
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v13, 0x1

    .line 1219
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

    .line 1220
    const-string v10, "WirelessSettings"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1221
    .local v9, sp:Landroid/content/SharedPreferences;
    const-string v10, "has_spcsc"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1222
    .local v4, customizedSPCSC:Ljava/lang/Boolean;
    const-string v10, "customizedNS"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1223
    .local v3, customizedNS:Ljava/lang/Boolean;
    const-string v10, "customizedML"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1224
    .local v2, customizedML:Ljava/lang/Boolean;
    const-string v10, "customizedIPT"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1226
    .local v1, customizedIPT:Ljava/lang/Boolean;
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1228
    .local v0, cm:Landroid/net/ConnectivityManager;
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

    .line 1251
    :cond_1
    :goto_0
    return-void

    .line 1231
    :cond_2
    const v6, 0x7f020207

    .line 1233
    .local v6, id:I
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1235
    .local v5, ed:Landroid/content/SharedPreferences$Editor;
    sget-object v10, Lcom/android/settings/PSService;->USB_Notioncation:Ljava/lang/String;

    invoke-interface {v5, v10, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1237
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 1240
    .local v8, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_3

    .line 1243
    invoke-static {p0}, Lcom/android/settings/PSService;->initNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v7

    .line 1245
    .local v7, notification:Landroid/app/Notification;
    invoke-virtual {v8, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1248
    .end local v7           #notification:Landroid/app/Notification;
    :cond_3
    invoke-virtual {v8, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/PSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/PSService;->SetNDISData()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/PSService;)Lcom/htc/service/HtcHardwareManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/PSService;->mService1:Lcom/htc/service/HtcHardwareManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/PSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/PSService;->CloseConn()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/PSService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/settings/PSService;->DBG:Z

    return v0
.end method

.method private static initNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 1256
    const v0, 0x7f020207

    .line 1257
    .local v0, id:I
    const v6, 0x7f0c0755

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1258
    .local v5, title:Ljava/lang/String;
    const v6, 0x7f0c0756

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1260
    .local v2, message:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1261
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1262
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1263
    const/high16 v6, 0x400

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1264
    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1266
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 1267
    .local v3, notification:Landroid/app/Notification;
    iput v0, v3, Landroid/app/Notification;->icon:I

    .line 1268
    const/4 v6, 0x2

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 1269
    iput-object v5, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1270
    const-wide/16 v6, 0x0

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 1271
    invoke-virtual {v3, p0, v5, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1273
    return-object v3
.end method

.method private stopIPT()V
    .locals 3

    .prologue
    .line 1287
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

    .line 1288
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/PSService;->SetIPT0()V

    .line 1291
    invoke-virtual {p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 1292
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1282
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 564
    sget v0, Lcom/android/settings/PSService;->defaultType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/settings/PSService;->defaultType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    const-string v1, "hasTethered"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/PSService;->IPTConnPass:Z

    if-eqz v0, :cond_2

    .line 572
    :cond_1
    :goto_0
    return-void

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 22
    .parameter "mIntent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, action:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    .line 155
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

    .line 157
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

    .line 159
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

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "ps_enabled"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "ipt_connectpass"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->IPTConnPass:Z

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.ats.usbui.DISABLE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 165
    const-string v18, "UIDisable"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 166
    .local v17, runATS:Z
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

    .line 167
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

    .line 170
    .end local v17           #runATS:Z
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

    .line 172
    .local v6, blockFromThreeLM:Z
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

    .line 174
    :cond_1
    if-eqz v6, :cond_3

    .line 175
    const-string v18, "SmartNS_PSService"

    const-string v19, "block from 3LM"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 180
    const/16 v18, 0x3

    .line 558
    :goto_2
    return v18

    .line 170
    .end local v6           #blockFromThreeLM:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 177
    .restart local v6       #blockFromThreeLM:Z
    :cond_3
    const-string v18, "SmartNS_PSService"

    const-string v19, "run ATS return"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 183
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 185
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

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/TetherSettings;->readCustomizationData(Landroid/content/Context;)V

    .line 189
    const-string v18, "SmartNS_PSService"

    const-string v19, "Customization change"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 191
    const/16 v18, 0x3

    goto :goto_2

    .line 195
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 196
    sget-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v18, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    .line 197
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/PSService;->DBG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    const-string v18, "SmartNS_PSService"

    const-string v19, "User quick boot, set the correct notifications"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 202
    const/16 v18, 0x3

    goto :goto_2

    .line 210
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.android.stop_IPT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 211
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

    .line 212
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 216
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 220
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.android.startIS.Fail"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 221
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

    .line 222
    :cond_b
    sget-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v18, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    .line 223
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 228
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 232
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.is.enabled"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 233
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

    .line 234
    :cond_e
    sget-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v18, :cond_f

    .line 235
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "ps_enabled"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    .line 239
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "com.htc.ipt.disabled"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 245
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 248
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.USB_HTC_CARMODE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/HtcFeatureList;->hasMirrorLink(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 254
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 256
    :cond_11
    const-string v18, "connected"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 257
    .local v9, isConnected:Z
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

    .line 259
    if-eqz v9, :cond_12

    .line 260
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

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    .line 263
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 264
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 269
    .end local v9           #isConnected:Z
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/settings/PSService;->IPT_Notioncation:Ljava/lang/String;

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 271
    .local v14, notification:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/settings/PSService;->IPT_Fail_Notioncation:Ljava/lang/String;

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 272
    .local v13, notificaiton_fail:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/settings/PSService;->USB_Notioncation:Ljava/lang/String;

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 275
    .local v15, notification_usb:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 279
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

    .line 280
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

    .line 281
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

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 284
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 287
    .end local v13           #notificaiton_fail:Z
    .end local v14           #notification:Z
    .end local v15           #notification_usb:Z
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

    .line 289
    :cond_15
    const/4 v4, 0x1

    .line 290
    .local v4, USB_allow:Z
    const/4 v3, 0x1

    .line 292
    .local v3, Tethering_allow:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.mdm.usb.intent.MDM_USB_ALLOW"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "allowed"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 294
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

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "mdm_Tethering"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 303
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

    .line 305
    if-eqz v4, :cond_17

    if-nez v3, :cond_18

    .line 306
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    .line 311
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 312
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 297
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.mdm.usb.intent.MDM_TETHERING_ALLOW"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "allowed"

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 299
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

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "mdm_usb"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto/16 :goto_3

    .line 316
    .end local v3           #Tethering_allow:Z
    .end local v4           #USB_allow:Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "sns_type"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    sput v18, Lcom/android/settings/PSService;->defaultType:I

    .line 317
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

    .line 320
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

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "kguard_locked"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 324
    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.htc.intent.action.KEY_GUARD_UNLOCK"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "kguard_locked"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 329
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 332
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

    .line 339
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "mdm_Tethering"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 346
    .restart local v3       #Tethering_allow:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "mdm_usb"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 347
    .restart local v4       #USB_allow:Z
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->USBPlugged:Z

    .line 350
    if-eqz v3, :cond_1e

    if-nez v4, :cond_20

    .line 352
    :cond_1e
    sget-boolean v18, Lcom/android/settings/PSService;->USBPlugged:Z

    if-nez v18, :cond_1f

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 355
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 356
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 359
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "usb_tethering_auto_enable"

    invoke-interface/range {v18 .. v19}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_23

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "has_spcsc"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->smartNSChecked:Z

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "usb_tethering_auto_enable"

    sget-boolean v20, Lcom/android/settings/PSService;->smartNSChecked:Z

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 364
    sget-boolean v18, Lcom/android/settings/PSService;->smartNSChecked:Z

    if-eqz v18, :cond_22

    .line 366
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

    .line 367
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

    .line 382
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

    .line 384
    sget-boolean v18, Lcom/android/settings/PSService;->USBPlugged:Z

    if-eqz v18, :cond_24

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "mlink_enabled"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_21

    .line 387
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

    .line 389
    const-string v18, "SmartNS_PSService"

    const-string v19, "enable Mirror link"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "kguard_locked"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 404
    :cond_21
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 405
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 371
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

    .line 372
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

    .line 377
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

    .line 398
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

    .line 399
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

    .line 400
    const-string v18, "SmartNS_PSService"

    const-string v19, "disable Mirror link"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    goto/16 :goto_5

    .line 409
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_27

    sget-boolean v18, Lcom/android/settings/PSService;->USBPlugged:Z

    if-eqz v18, :cond_27

    .line 411
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014

    cmpl-double v18, v18, v20

    if-lez v18, :cond_27

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "keyguard"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/KeyguardManager;

    .line 414
    .local v11, mKeyguardManager:Landroid/app/KeyguardManager;
    if-eqz v11, :cond_26

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v18

    if-eqz v18, :cond_26

    invoke-virtual {v11}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v18

    if-eqz v18, :cond_26

    const/4 v10, 0x1

    .line 416
    .local v10, isLocked:Z
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

    .line 417
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

    .line 419
    if-eqz v10, :cond_27

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 421
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 414
    .end local v10           #isLocked:Z
    :cond_26
    const/4 v10, 0x0

    goto :goto_6

    .line 426
    .end local v11           #mKeyguardManager:Landroid/app/KeyguardManager;
    :cond_27
    sget-boolean v18, Lcom/android/settings/PSService;->USBPlugged:Z

    if-eqz v18, :cond_2d

    .line 431
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

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 434
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

    .line 436
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

    .line 463
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

    .line 466
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

    .line 468
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 469
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 441
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 444
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

    .line 446
    :cond_2e
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/PSService;->USBPlugged:Z

    .line 447
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 456
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

    .line 457
    :cond_2f
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 473
    :cond_30
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "ps_enabled"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.htc.android.start_IPT"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_31

    .line 479
    sget v18, Lcom/android/settings/PSService;->defaultType:I

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_39

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "trigger_from_ipt_ui"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->triggerFromIPT_UI:Z

    .line 483
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

    .line 486
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

    .line 487
    :cond_32
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/PSService;->triggerFromIPT_UI:Z

    .line 490
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

    .line 493
    sget v18, Lcom/android/settings/PSService;->defaultType:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_34

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v18, v0

    const-string v19, "smart_pcsc"

    const/16 v20, 0x1

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 496
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/settings/PSService;->runSmartPCSC:Z

    .line 497
    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.htc.android.smartPCSC"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 499
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

    .line 501
    :cond_35
    sget-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    if-eqz v18, :cond_36

    sget-boolean v18, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-nez v18, :cond_36

    .line 503
    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.htc.android.opening_IPT"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/PSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 507
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->sp:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "notshow_notice"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    sput-boolean v18, Lcom/android/settings/PSService;->Notshow_notice:Z

    .line 511
    sget-boolean v18, Lcom/android/settings/PSService;->PSEnabled:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_38

    .line 515
    :try_start_0
    sget-boolean v18, Lcom/android/settings/PSService;->triggerFromIPT_UI:Z

    if-eqz v18, :cond_37

    .line 517
    sget-boolean v18, Lcom/android/settings/PSService;->Notshow_notice:Z

    if-nez v18, :cond_37

    .line 519
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    const-string v19, "com.android.settings"

    const-string v20, "com.android.settings.PSActivity"

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 520
    .local v12, mintent:Landroid/content/Intent;
    const/high16 v18, 0x1800

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 521
    const-string v18, "ps_dialog_code"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 525
    .end local v12           #mintent:Landroid/content/Intent;
    :cond_37
    const v8, 0x7f020207

    .line 527
    .local v8, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/PSService;->initNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v16

    .line 528
    .local v16, notify:Landroid/app/Notification;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Lcom/android/settings/PSService;->startForeground(ILandroid/app/Notification;)V

    .line 530
    new-instance v18, Lcom/android/settings/PSService$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/PSService$1;-><init>(Lcom/android/settings/PSService;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/PSService$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .end local v3           #Tethering_allow:Z
    .end local v4           #USB_allow:Z
    .end local v8           #id:I
    .end local v16           #notify:Landroid/app/Notification;
    :cond_38
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PSService;->stopSelf()V

    .line 558
    const/16 v18, 0x3

    goto/16 :goto_2

    .line 482
    .restart local v3       #Tethering_allow:Z
    .restart local v4       #USB_allow:Z
    :cond_39
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/settings/PSService;->triggerFromIPT_UI:Z

    goto/16 :goto_7

    .line 540
    :catch_0
    move-exception v7

    .line 541
    .local v7, e:Ljava/lang/Exception;
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

    .line 542
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/PSService;->SetIPT0()V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/PSService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    goto :goto_8
.end method
