.class public Lcom/android/settings/SmartNSUtility;
.super Ljava/lang/Object;
.source "SmartNSUtility.java"


# static fields
.field public static final APN_FROM_NSRECEIVER:I = 0x0

.field public static final APN_FROM_PSSERVICE:I = 0x1

.field public static final APN_FROM_UNKNOWN:I = -0x1

.field public static final CHARGER_CURRENT_LOW:I = 0x1

.field public static final CHARGER_CURRENT_LOW_DIALOG_DONT_SHOW:Ljava/lang/String; = "charger_current_low_dialog_dont_show"

.field public static final CHARGER_DONT_CARE:I = -0x1

.field public static final CHARGER_NOT_SUPPORT:I = 0x0

.field public static final CHARGER_NOT_SUPPORT_DIALOG_DONT_SHOW:Ljava/lang/String; = "charger_not_support_dialog_dont_show"

.field public static final CHARGER_NOT_SUPPORT_KDDI:I = 0x2

.field private static final DEFAULT_WIFI:Ljava/lang/String; = "default_wifi"

.field private static DUN_ID:Ljava/lang/String; = null

.field private static ID_INDEX:I = 0x0

.field private static final ML_SP_AIRPLANE_KEY:Ljava/lang/String; = "service.modem.command"

.field private static final ML_SP_AIRPLANE_VALUE:Ljava/lang/String; = "airplane"

.field protected static final ML_SP_DISABLED_VALUE:Ljava/lang/String; = "0"

.field protected static final ML_SP_ENABLED_VALUE:Ljava/lang/String; = "1"

.field private static final ML_SP_FUN_KEY:Ljava/lang/String; = "service.modem.enable"

.field private static final ML_SP_INTERFACE_BT_VALUE:Ljava/lang/String; = "BT"

.field private static final ML_SP_INTERFACE_KEY:Ljava/lang/String; = "service.modem.interface"

.field private static final ML_SP_INTERFACE_USB_VALUE:Ljava/lang/String; = "USB"

.field protected static final ML_SP_MDM_PORT:Ljava/lang/String; = "/sys/module/msm72k_udc/parameters/mdm_port_enabled"

.field private static final ML_SP_STATUS_KEY:Ljava/lang/String; = "init.svc.modem"

.field private static final ML_SP_STATUS_OFF_VALUE:Ljava/lang/String; = "stopped"

.field private static final ML_SP_STATUS_ON_VALUE:Ljava/lang/String; = "running"

.field private static final ML_SP_STATUS_RESTART_VALUE:Ljava/lang/String; = "restarting"

.field private static NAME_INDEX:I = 0x0

.field private static PREFERDUN_URI:Landroid/net/Uri; = null

.field private static PREFERRED_DUN_URI:Ljava/lang/String; = null

.field public static final SNS_Fail_Notioncation:Ljava/lang/String; = "SNS_Fail_Notioncation"

.field public static final SNS_Notioncation:Ljava/lang/String; = "SNS_Notioncation"

.field private static final TAG:Ljava/lang/String; = "SmartNS_Utility"

.field public static final TRIGGER_SPCSC:Ljava/lang/String; = "trigger_from_smartPCSC"

.field private static TYPES_INDEX:I

.field public static diagPortPath:Ljava/lang/String;

.field public static filePath:Ljava/lang/String;

.field public static filePathCMCC:Ljava/lang/String;

.field public static filePathPico:Ljava/lang/String;

.field private static mApnSelectedIndex:I

.field private static mDunMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDunNameItems:[Ljava/lang/String;

.field private static mIsEnableMultipleDun:Z

.field private static mIsMVNO:Z

.field private static mKeyArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static pause:Landroid/os/ConditionVariable;

.field public static usbCableConnect:Ljava/lang/String;

.field public static usbCableConnectCMCC:Ljava/lang/String;

.field public static usbDenied:Ljava/lang/String;


# instance fields
.field KEY_APN_SELECTED_TYPE:Ljava/lang/String;

.field apn_items:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const-string v0, "usb_cable_connect"

    sput-object v0, Lcom/android/settings/SmartNSUtility;->usbCableConnect:Ljava/lang/String;

    .line 66
    const-string v0, "online"

    sput-object v0, Lcom/android/settings/SmartNSUtility;->usbCableConnectCMCC:Ljava/lang/String;

    .line 68
    const-string v0, "usb_denied"

    sput-object v0, Lcom/android/settings/SmartNSUtility;->usbDenied:Ljava/lang/String;

    .line 69
    const-string v0, "/sys/devices/platform/android_usb/"

    sput-object v0, Lcom/android/settings/SmartNSUtility;->filePath:Ljava/lang/String;

    .line 70
    const-string v0, "/sys/class/power_supply/usb/"

    sput-object v0, Lcom/android/settings/SmartNSUtility;->filePathCMCC:Ljava/lang/String;

    .line 71
    const-string v0, "/sys/devices/platform/android_usb/"

    sput-object v0, Lcom/android/settings/SmartNSUtility;->filePathPico:Ljava/lang/String;

    .line 72
    const-string v0, "/sys/class/android_usb/f_diag/on"

    sput-object v0, Lcom/android/settings/SmartNSUtility;->diagPortPath:Ljava/lang/String;

    .line 514
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/settings/SmartNSUtility;->pause:Landroid/os/ConditionVariable;

    .line 931
    sput v1, Lcom/android/settings/SmartNSUtility;->ID_INDEX:I

    .line 932
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/SmartNSUtility;->TYPES_INDEX:I

    .line 933
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/SmartNSUtility;->NAME_INDEX:I

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/SmartNSUtility;->mKeyArray:Ljava/util/ArrayList;

    .line 936
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SmartNSUtility;->mDunNameItems:[Ljava/lang/String;

    .line 937
    const-string v0, "dun_id"

    sput-object v0, Lcom/android/settings/SmartNSUtility;->DUN_ID:Ljava/lang/String;

    .line 938
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/SmartNSUtility;->mDunMap:Ljava/util/HashMap;

    .line 939
    const-string v0, "content://telephony/carriers/preferdun"

    sput-object v0, Lcom/android/settings/SmartNSUtility;->PREFERRED_DUN_URI:Ljava/lang/String;

    .line 940
    sget-object v0, Lcom/android/settings/SmartNSUtility;->PREFERRED_DUN_URI:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SmartNSUtility;->PREFERDUN_URI:Landroid/net/Uri;

    .line 942
    sput-boolean v1, Lcom/android/settings/SmartNSUtility;->mIsEnableMultipleDun:Z

    .line 944
    sput-boolean v1, Lcom/android/settings/SmartNSUtility;->mIsMVNO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    const-string v0, "apn_selected_type"

    iput-object v0, p0, Lcom/android/settings/SmartNSUtility;->KEY_APN_SELECTED_TYPE:Ljava/lang/String;

    return-void
.end method

.method public static Check_Type(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 822
    invoke-static {p0}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 824
    sget-boolean v0, Lcom/android/settings/MLReceiver;->USB:Z

    .line 828
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/settings/MLReceiver;->BT:Z

    goto :goto_0
.end method

.method public static FailISNotification(Landroid/content/Context;Z)V
    .locals 13
    .parameter "context"
    .parameter "visible"

    .prologue
    .line 1161
    const-string v11, "WirelessSettings"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1163
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v11, "smart_pcsc"

    const/4 v12, 0x0

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "trigger_from_smartPCSC"

    const/4 v12, 0x0

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1205
    :goto_0
    return-void

    .line 1166
    :cond_1
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 1167
    .local v6, notificationManager:Landroid/app/NotificationManager;
    const v2, 0x7f020200

    .line 1168
    .local v2, id:I
    const v10, 0x7f0c050d

    .line 1169
    .local v10, title_id:I
    const v5, 0x7f0c00ad

    .line 1171
    .local v5, message_id:I
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1173
    const v10, 0x7f0c050e

    .line 1179
    :cond_2
    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1180
    .local v9, title:Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1182
    .local v4, message:Ljava/lang/String;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1183
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v11, "SNS_Fail_Notioncation"

    invoke-interface {v1, v11, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1185
    if-eqz p1, :cond_4

    const/4 v11, 0x0

    invoke-static {p0, v11}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 1189
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 1190
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1192
    .local v3, intent:Landroid/content/Intent;
    const-string v11, "com.android.settings"

    const-string v12, "com.android.settings.TetherSettings"

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    const/high16 v11, 0x400

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1194
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, v11, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1195
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1196
    .local v0, FIPTNotification:Landroid/app/Notification;
    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 1197
    const/4 v11, 0x2

    iput v11, v0, Landroid/app/Notification;->flags:I

    .line 1198
    iput-object v9, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1199
    const-wide/16 v11, 0x0

    iput-wide v11, v0, Landroid/app/Notification;->when:J

    .line 1200
    invoke-virtual {v0, p0, v9, v4, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1201
    const-string v11, "SmartNSFail"

    const v12, 0x7f020201

    invoke-virtual {v6, v11, v12, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 1186
    .end local v0           #FIPTNotification:Landroid/app/Notification;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    :cond_4
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    invoke-static {p0, v11}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    goto :goto_1

    .line 1203
    :cond_5
    const-string v11, "SmartNSFail"

    const v12, 0x7f020201

    invoke-virtual {v6, v11, v12}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private static InitDunData()V
    .locals 1

    .prologue
    .line 948
    sget-object v0, Lcom/android/settings/SmartNSUtility;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 949
    sget-object v0, Lcom/android/settings/SmartNSUtility;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 950
    return-void
.end method

.method public static SetISNotification(Landroid/content/Context;Z)V
    .locals 16
    .parameter "context"
    .parameter "visible"

    .prologue
    .line 1091
    const-string v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 1092
    .local v8, notificationManager:Landroid/app/NotificationManager;
    const v4, 0x7f0201ff

    .line 1093
    .local v4, id:I
    const v12, 0x7f0c050d

    .line 1094
    .local v12, title_id:I
    const v7, 0x7f0c00ac

    .line 1095
    .local v7, message_id:I
    const v13, 0x7f0c0545

    .line 1097
    .local v13, toast_id:I
    const-string v14, "SmartNS_Utility"

    const-string v15, "setISNotification"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1102
    const v12, 0x7f0c050e

    .line 1104
    const v13, 0x7f0c0547

    .line 1117
    :cond_0
    :goto_0
    const-string v14, "WirelessSettings"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1119
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v14, "sns_type"

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1121
    .local v2, defaultType:I
    const/4 v14, 0x6

    if-ne v2, v14, :cond_1

    .line 1123
    const v12, 0x7f0c0550

    .line 1124
    const v13, 0x7f0c0549

    .line 1128
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1129
    .local v11, title:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1131
    .local v6, message:Ljava/lang/String;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1132
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v14, "SNS_Notioncation"

    move/from16 v0, p1

    invoke-interface {v3, v14, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1135
    if-eqz p1, :cond_5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    .line 1139
    :cond_2
    :goto_1
    if-eqz p1, :cond_6

    .line 1140
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1141
    .local v5, intent:Landroid/content/Intent;
    const-string v14, "com.android.settings"

    const-string v15, "com.android.settings.TetherSettings"

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    const/high16 v14, 0x400

    invoke-virtual {v5, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1144
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1145
    .local v9, pendingIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1146
    .local v1, IPTNotification:Landroid/app/Notification;
    iput v4, v1, Landroid/app/Notification;->icon:I

    .line 1147
    const/4 v14, 0x2

    iput v14, v1, Landroid/app/Notification;->flags:I

    .line 1148
    iput-object v11, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1149
    const-wide/16 v14, 0x0

    iput-wide v14, v1, Landroid/app/Notification;->when:J

    .line 1150
    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v11, v6, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1151
    const-string v14, "SmartNS"

    const v15, 0x7f020200

    invoke-virtual {v8, v14, v15, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1152
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x7d0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 1157
    .end local v1           #IPTNotification:Landroid/app/Notification;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v9           #pendingIntent:Landroid/app/PendingIntent;
    :goto_2
    return-void

    .line 1106
    .end local v2           #defaultType:I
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v6           #message:Ljava/lang/String;
    .end local v10           #sp:Landroid/content/SharedPreferences;
    .end local v11           #title:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1108
    const v12, 0x7f0c0557

    goto/16 :goto_0

    .line 1110
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1111
    const v12, 0x7f0c0531

    .line 1113
    const v13, 0x7f0c0546

    goto/16 :goto_0

    .line 1136
    .restart local v2       #defaultType:I
    .restart local v3       #ed:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #message:Ljava/lang/String;
    .restart local v10       #sp:Landroid/content/SharedPreferences;
    .restart local v11       #title:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/settings/PSService;->SetUSBNotification(Landroid/content/Context;Z)V

    goto :goto_1

    .line 1155
    :cond_6
    const-string v14, "SmartNS"

    const v15, 0x7f020200

    invoke-virtual {v8, v14, v15}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public static SetStorageNotification(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v9, 0x0

    .line 1208
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 1209
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f020208

    .line 1210
    .local v1, id:I
    const v7, 0x7f0c0761

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1211
    .local v6, title:Ljava/lang/String;
    const v7, 0x7f0c075b

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1213
    .local v3, message:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1214
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1215
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.SmartPCStorageDialog"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1217
    const/high16 v7, 0x400

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1218
    invoke-static {p0, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1219
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1220
    .local v0, Notification:Landroid/app/Notification;
    const v7, 0x7f020207

    iput v7, v0, Landroid/app/Notification;->icon:I

    .line 1221
    const/4 v7, 0x2

    iput v7, v0, Landroid/app/Notification;->flags:I

    .line 1222
    iput-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1223
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Landroid/app/Notification;->when:J

    .line 1224
    invoke-virtual {v0, p0, v6, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1225
    invoke-virtual {v4, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1230
    .end local v0           #Notification:Landroid/app/Notification;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 1228
    :cond_0
    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public static ShowConnectionDialog(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 836
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    const v0, 0x7f0c053b

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0516

    new-instance v2, Lcom/android/settings/SmartNSUtility$5;

    invoke-direct {v2}, Lcom/android/settings/SmartNSUtility$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 842
    return-void

    .line 836
    :cond_0
    const v0, 0x7f0c053c

    goto :goto_0
.end method

.method public static StartCTModem(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "enable"

    .prologue
    const v9, 0x1040467

    const/4 v8, 0x1

    .line 861
    const-string v5, "mount"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/MountManager;

    .line 862
    .local v2, mountService:Lcom/htc/service/MountManager;
    if-nez v2, :cond_0

    .line 863
    invoke-static {p0, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 904
    :goto_0
    return-void

    .line 868
    :cond_0
    const/4 v3, 0x0

    .line 869
    .local v3, result:I
    if-eqz p1, :cond_1

    .line 870
    :try_start_0
    const-string v5, "WirelessSettings"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 871
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "startCTModem"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 872
    invoke-virtual {v2}, Lcom/htc/service/MountManager;->enableModemLink()I

    move-result v3

    .line 883
    :goto_1
    if-nez v3, :cond_2

    .line 884
    const-string v5, "SmartNS_Utility"

    const-string v6, "Mount success"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 900
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 901
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p0, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 876
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v5, "WirelessSettings"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 877
    .restart local v4       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "startCTModem"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 878
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/htc/service/MountManager;->setMountISOEnabled(Z)I

    move-result v3

    goto :goto_1

    .line 888
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0543

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, mWarningMessage:Ljava/lang/String;
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0542

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x204025a

    new-instance v7, Lcom/android/settings/SmartNSUtility$6;

    invoke-direct {v7}, Lcom/android/settings/SmartNSUtility$6;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 898
    const-string v5, "SmartNS_Utility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mount fail, storage reault code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/settings/SmartNSUtility;->closeIPT(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/settings/SmartNSUtility;->setPCType(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings/SmartNSUtility;->pause:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private static closeAllFunctions(Landroid/content/Context;)V
    .locals 6
    .parameter "mContext"

    .prologue
    const/4 v5, 0x0

    .line 559
    move-object v0, p0

    .line 560
    .local v0, context:Landroid/content/Context;
    const-string v2, "WirelessSettings"

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 562
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "SmartNS_Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close all tethering functions  PreFunc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sns_pre_type"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MLINK_Enabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mlink_enabled"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v2, "sns_pre_type"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 566
    invoke-static {v0, v5}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 569
    :cond_0
    const-string v2, "sns_pre_type"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 571
    const-string v2, "mlink_enabled"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    invoke-static {v0, v5}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    .line 577
    :cond_1
    new-instance v2, Lcom/android/settings/SmartNSUtility$4;

    invoke-direct {v2, v1, v0}, Lcom/android/settings/SmartNSUtility$4;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/settings/SmartNSUtility$4;->start()V

    .line 619
    return-void
.end method

.method private static closeIPT(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 477
    const-string v1, "WirelessSettings"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 479
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "ps_enabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/SmartNSUtility$2;

    invoke-direct {v2, p0}, Lcom/android/settings/SmartNSUtility$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 492
    invoke-static {p0, v3}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 493
    invoke-static {p0, v3}, Lcom/android/settings/PSService;->SetIPTNotification(Landroid/content/Context;Z)V

    .line 496
    :cond_0
    return-void
.end method

.method protected static enableNCM(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 518
    const-string v3, "SmartNS_Utility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable Mirror Link:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, count:I
    const-string v3, "WirelessSettings"

    invoke-virtual {p0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 525
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isMLinkOpening"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 526
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.android.openingMLINK.UI"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 527
    if-eqz p1, :cond_0

    .line 529
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "closing_all"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 530
    invoke-static {p0}, Lcom/android/settings/SmartNSUtility;->closeAllFunctions(Landroid/content/Context;)V

    .line 532
    :goto_0
    const-string v3, "closing_all"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v7, :cond_0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 534
    const-string v3, "SmartNS_Utility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wait closing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    sget-object v3, Lcom/android/settings/SmartNSUtility;->pause:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.net.usbnet.MODE_NCM"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 542
    const-string v3, "enable"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "mlink_enabled"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 548
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 549
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "isMLinkOpening"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 551
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    invoke-static {p0, p1}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    .line 553
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.android.enableMLINK.UI"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 555
    :cond_1
    return-void

    .line 544
    :cond_2
    const-string v3, "enable"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private static enableRMNET(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 499
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/SmartNSUtility$3;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/SmartNSUtility$3;-><init>(ILandroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 512
    return-void
.end method

.method public static enableWifi(ZLandroid/content/Context;)Z
    .locals 5
    .parameter "enable"
    .parameter "mContext"

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, isWifiEnabled:Z
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 323
    .local v1, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    .line 324
    const-string v2, "SmartNS_Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The wifi enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v0
.end method

.method private static fillDunList(Landroid/content/Context;)V
    .locals 13
    .parameter "mContext"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 953
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->InitDunData()V

    .line 954
    const/4 v3, 0x0

    .line 955
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 958
    .local v10, op:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    :goto_0
    sput-boolean v0, Lcom/android/settings/SmartNSUtility;->mIsMVNO:Z

    .line 960
    sget-boolean v0, Lcom/android/settings/SmartNSUtility;->mIsMVNO:Z

    if-nez v0, :cond_3

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn <> \'\' AND name <> \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 973
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/wrap/android/provider/HtcWrapTelephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v12, "_id"

    aput-object v12, v2, v5

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 977
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 979
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 980
    sget v0, Lcom/android/settings/SmartNSUtility;->ID_INDEX:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 981
    .local v6, Key:Ljava/lang/String;
    sget v0, Lcom/android/settings/SmartNSUtility;->TYPES_INDEX:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 982
    .local v11, type:Ljava/lang/String;
    sget v0, Lcom/android/settings/SmartNSUtility;->NAME_INDEX:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 983
    .local v9, name:Ljava/lang/String;
    const-string v0, "SmartNS_Utility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    if-eqz v11, :cond_1

    const-string v0, "dun"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 986
    :cond_0
    sget-object v0, Lcom/android/settings/SmartNSUtility;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v0, Lcom/android/settings/SmartNSUtility;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .end local v6           #Key:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :cond_2
    move v0, v5

    .line 958
    goto/16 :goto_0

    .line 965
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn <> \'\' AND name <> \'\' AND operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 992
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 994
    sget-object v0, Lcom/android/settings/SmartNSUtility;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 995
    sget-object v0, Lcom/android/settings/SmartNSUtility;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/settings/SmartNSUtility;->mDunNameItems:[Ljava/lang/String;

    .line 996
    const/4 v8, 0x0

    .local v8, j:I
    :goto_3
    sget-object v0, Lcom/android/settings/SmartNSUtility;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 997
    sget-object v1, Lcom/android/settings/SmartNSUtility;->mDunNameItems:[Ljava/lang/String;

    sget-object v0, Lcom/android/settings/SmartNSUtility;->mDunMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/settings/SmartNSUtility;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v8

    .line 996
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1000
    .end local v8           #j:I
    :cond_5
    return-void
.end method

.method private static geCustKeyBolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "eADSReaderName"
    .parameter "keyName"
    .parameter "bDefaultValue"

    .prologue
    .line 1233
    const/4 v2, 0x0

    .line 1234
    .local v2, readerNeedSIMReady:Z
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 1235
    .local v0, manager:Lcom/htc/customization/HtcCustomizationManager;
    move v3, p2

    .line 1236
    .local v3, value:Z
    if-eqz v0, :cond_1

    .line 1237
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 1238
    .local v1, reader:Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v1, :cond_0

    .line 1239
    invoke-interface {v1, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1243
    :goto_0
    const-string v4, "SmartNS_Utility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ACC]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    .end local v1           #reader:Lcom/htc/customization/HtcCustomizationReader;
    :goto_1
    return v3

    .line 1241
    .restart local v1       #reader:Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    const-string v4, "SmartNS_Utility"

    const-string v5, "[ACC]reader = null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1247
    .end local v1           #reader:Lcom/htc/customization/HtcCustomizationReader;
    :cond_1
    const-string v4, "SmartNS_Utility"

    const-string v5, "[ACC]HtcCustomizationManager.getInstance failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static geCustKeyInteger(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .parameter "eADSReaderName"
    .parameter "keyName"
    .parameter "defaultValue"

    .prologue
    .line 1253
    const/4 v2, 0x0

    .line 1254
    .local v2, readerNeedSIMReady:Z
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 1255
    .local v0, manager:Lcom/htc/customization/HtcCustomizationManager;
    move v3, p2

    .line 1256
    .local v3, value:I
    if-eqz v0, :cond_1

    .line 1257
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v4, v5}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    .line 1258
    .local v1, reader:Lcom/htc/customization/HtcCustomizationReader;
    if-eqz v1, :cond_0

    .line 1259
    invoke-interface {v1, p1, p2}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v3

    .line 1263
    :goto_0
    const-string v4, "SmartNS_Utility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ACC]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    .end local v1           #reader:Lcom/htc/customization/HtcCustomizationReader;
    :goto_1
    return v3

    .line 1261
    .restart local v1       #reader:Lcom/htc/customization/HtcCustomizationReader;
    :cond_0
    const-string v4, "SmartNS_Utility"

    const-string v5, "[ACC]reader = null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1267
    .end local v1           #reader:Lcom/htc/customization/HtcCustomizationReader;
    :cond_1
    const-string v4, "SmartNS_Utility"

    const-string v5, "[ACC]HtcCustomizationManager.getInstance failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDunItems()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1037
    sget-object v0, Lcom/android/settings/SmartNSUtility;->mDunNameItems:[Ljava/lang/String;

    return-object v0
.end method

.method public static getMLInterface()I
    .locals 4

    .prologue
    .line 714
    const-string v1, "service.modem.interface"

    invoke-static {v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, s:Ljava/lang/String;
    const-string v1, "SmartNS_Utility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ML interface = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v1, "BT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    const/4 v1, 0x1

    .line 719
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSelectedDunIndex(Landroid/content/Context;)I
    .locals 11
    .parameter "mContext"

    .prologue
    const/4 v3, 0x0

    .line 1003
    const/4 v8, 0x0

    .line 1004
    .local v8, name:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1006
    .local v9, selectIndex:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SmartNSUtility;->PREFERDUN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "name"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1010
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1011
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1012
    sget v0, Lcom/android/settings/SmartNSUtility;->NAME_INDEX:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1014
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1016
    invoke-static {p0}, Lcom/android/settings/SmartNSUtility;->fillDunList(Landroid/content/Context;)V

    .line 1019
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    sget-object v0, Lcom/android/settings/SmartNSUtility;->mDunMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1020
    if-eqz v8, :cond_1

    sget-object v0, Lcom/android/settings/SmartNSUtility;->mDunNameItems:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1021
    move v9, v7

    move v10, v9

    .line 1025
    .end local v9           #selectIndex:I
    .local v10, selectIndex:I
    :goto_1
    return v10

    .line 1019
    .end local v10           #selectIndex:I
    .restart local v9       #selectIndex:I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v10, v9

    .line 1025
    .end local v9           #selectIndex:I
    .restart local v10       #selectIndex:I
    goto :goto_1
.end method

.method public static isApnAvailable()Z
    .locals 2

    .prologue
    .line 1041
    const-string v1, "ro.cid"

    invoke-static {v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, CID:Ljava/lang/String;
    const-string v1, "ORANG202"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    const/4 v1, 0x1

    .line 1045
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIPTConnected(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 298
    const/4 v3, 0x0

    .line 300
    .local v3, isIPTOn:Z
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 302
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/16 v4, 0x37

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 303
    .local v0, IPTInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 304
    const-string v4, "SmartNS_Utility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The isIPTOn status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v0           #IPTInfo:Landroid/net/NetworkInfo;
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 305
    :catch_0
    move-exception v2

    .line 306
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isMLEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 735
    const-string v1, "WirelessSettings"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "customizedML"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    const-string v1, "/sys/module/msm72k_udc/parameters/mdm_port_enabled"

    invoke-static {v1}, Lcom/android/settings/SmartNSUtility;->readAttrFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 738
    :cond_0
    return v0
.end method

.method public static isMTPIOBusy()Z
    .locals 2

    .prologue
    .line 363
    const-string v0, "iobusy"

    const-string v1, "/sys/class/android_usb/f_mtp/"

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static isNetworkConnected(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 280
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    const/4 v2, 0x1

    .line 294
    :goto_0
    return v2

    .line 283
    :cond_0
    const/4 v2, 0x0

    .line 285
    .local v2, isAnyNetworkConnected:Z
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 286
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    const/4 v2, 0x1

    .line 289
    :cond_1
    const-string v3, "SmartNS_Utility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The isAnyNetworkConnected status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 291
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isUsbConnected()Z
    .locals 3

    .prologue
    .line 355
    sget-object v1, Lcom/android/settings/SmartNSUtility;->usbCableConnect:Ljava/lang/String;

    sget-object v2, Lcom/android/settings/SmartNSUtility;->filePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/SmartNSUtility;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 356
    .local v0, connected:Z
    if-eqz v0, :cond_0

    .line 357
    sget-object v1, Lcom/android/settings/SmartNSUtility;->usbDenied:Ljava/lang/String;

    sget-object v2, Lcom/android/settings/SmartNSUtility;->filePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/SmartNSUtility;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWifiOn(Landroid/content/Context;)Z
    .locals 5
    .parameter "mContext"

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, isWifiOn:Z
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 315
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 316
    const-string v2, "SmartNS_Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The wifi status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v0
.end method

.method public static notifyMLAirplane(Landroid/content/Context;)V
    .locals 2
    .parameter "mContext"

    .prologue
    const/4 v1, 0x0

    .line 814
    invoke-static {v1, p0}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    .line 815
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    .line 816
    invoke-static {v1, p0}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 818
    return-void
.end method

.method protected static popAPNList(Landroid/content/Context;)V
    .locals 4
    .parameter "mContext"

    .prologue
    .line 1051
    invoke-static {p0}, Lcom/android/settings/SmartNSUtility;->getSelectedDunIndex(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/settings/SmartNSUtility;->mApnSelectedIndex:I

    .line 1053
    const-string v0, "SmartNS_Utility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popAPNList() Dun name items:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/SmartNSUtility;->mDunNameItems:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    sget-object v0, Lcom/android/settings/SmartNSUtility;->mDunNameItems:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1059
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c052d

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SmartNSUtility;->mDunNameItems:[Ljava/lang/String;

    sget v2, Lcom/android/settings/SmartNSUtility;->mApnSelectedIndex:I

    new-instance v3, Lcom/android/settings/SmartNSUtility$8;

    invoke-direct {v3, p0}, Lcom/android/settings/SmartNSUtility$8;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0517

    new-instance v2, Lcom/android/settings/SmartNSUtility$7;

    invoke-direct {v2}, Lcom/android/settings/SmartNSUtility$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1088
    :cond_0
    return-void
.end method

.method public static readAttrFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filename"

    .prologue
    .line 770
    const/4 v1, 0x0

    .line 771
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 775
    .local v3, ret:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 779
    .local v4, s:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 781
    if-nez v3, :cond_0

    .line 782
    move-object v3, v4

    goto :goto_0

    .line 784
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 795
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v1, :cond_2

    .line 796
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 802
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 804
    new-instance v3, Ljava/lang/String;

    .end local v3           #ret:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 807
    .restart local v3       #ret:Ljava/lang/String;
    :cond_3
    const-string v5, "SmartNS_Utility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAttrFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-object v3

    .line 788
    :catch_0
    move-exception v0

    .line 790
    .local v0, e:Ljava/io/IOException;
    :goto_3
    const-string v5, "SmartNS_Utility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 798
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 788
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private static readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "fn"
    .parameter "filePath"

    .prologue
    .line 367
    const/4 v3, 0x0

    .line 368
    .local v3, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 370
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v3           #fr:Ljava/io/FileReader;
    .local v4, fr:Ljava/io/FileReader;
    if-eqz v4, :cond_0

    .line 372
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 375
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 376
    const-string v6, "SmartNS_Utility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 387
    if-eqz v0, :cond_1

    .line 388
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 394
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 395
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    move-object v3, v4

    .line 401
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v5           #line:Ljava/lang/String;
    .restart local v3       #fr:Ljava/io/FileReader;
    :goto_2
    return-object v5

    .line 379
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v6, "SmartNS_Utility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v5, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 387
    if-eqz v0, :cond_4

    .line 388
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 394
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 395
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :cond_5
    :goto_4
    move-object v3, v4

    .line 380
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_2

    .line 383
    :catch_0
    move-exception v2

    .line 384
    .local v2, ex:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v6, "SmartNS_Utility"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 387
    if-eqz v0, :cond_6

    .line 388
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 394
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 395
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 400
    :cond_7
    :goto_7
    const-string v6, "SmartNS_Utility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v5, ""

    goto :goto_2

    .line 386
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 387
    :goto_8
    if-eqz v0, :cond_8

    .line 388
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 394
    :cond_8
    :goto_9
    if-eqz v3, :cond_9

    .line 395
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 386
    :cond_9
    :goto_a
    throw v6

    .line 390
    :catch_1
    move-exception v7

    goto :goto_9

    .line 397
    :catch_2
    move-exception v7

    goto :goto_a

    .line 390
    .restart local v2       #ex:Ljava/io/IOException;
    :catch_3
    move-exception v6

    goto :goto_6

    .line 397
    :catch_4
    move-exception v6

    goto :goto_7

    .line 390
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v5       #line:Ljava/lang/String;
    :catch_5
    move-exception v6

    goto/16 :goto_0

    .line 397
    :catch_6
    move-exception v6

    goto/16 :goto_1

    .line 390
    .end local v5           #line:Ljava/lang/String;
    :catch_7
    move-exception v6

    goto :goto_3

    .line 397
    :catch_8
    move-exception v6

    goto :goto_4

    .line 386
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_8

    .line 383
    .end local v3           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v3, v4

    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #fr:Ljava/io/FileReader;
    goto :goto_5
.end method

.method public static setAlarmIntent(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 845
    const-string v4, "SmartNS_Utility"

    const-string v5, "set AlarmIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 848
    .local v1, cal:Ljava/util/Calendar;
    const/16 v4, 0xd

    const/16 v5, 0x12

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 849
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.net.checkNetwork"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v2, intent:Landroid/content/Intent;
    const/4 v4, 0x1

    const/high16 v5, 0x4000

    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 853
    .local v3, pintent:Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 854
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 855
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 856
    return-void
.end method

.method public static setDataConnection(ZLandroid/content/Context;)V
    .locals 9
    .parameter "on"
    .parameter "context"

    .prologue
    .line 626
    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MHS:Z

    if-eqz v6, :cond_1

    .line 628
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 630
    .local v0, cm:Landroid/net/ConnectivityManager;
    :try_start_0
    new-instance v2, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    invoke-direct {v2, v0}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    .line 632
    .local v2, icm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    const/16 v6, -0x22

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v5

    .line 633
    .local v5, subscribed:I
    if-eqz v5, :cond_0

    if-nez p0, :cond_0

    .line 634
    const/16 v6, -0x12

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v5

    .line 637
    :cond_0
    const-string v6, "SmartNS_Utility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set data connection:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " subscribed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    if-eqz v5, :cond_1

    if-nez p0, :cond_1

    .line 677
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #icm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    .end local v5           #subscribed:I
    :goto_0
    return-void

    .line 641
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 642
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SmartNS_Utility"

    const-string v7, "Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    .line 649
    .local v3, phoneService:Lcom/android/internal/telephony/ITelephony;
    const-string v6, "phone"

    invoke-static {v6}, Lcom/htc/wrap/android/os/HtcWrapServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 650
    if-nez v3, :cond_2

    .line 652
    const-string v6, "SmartNS_Utility"

    const-string v7, "null phoneService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 656
    :cond_2
    const/4 v4, -0x1

    .line 658
    .local v4, state:I
    :try_start_1
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getDataState()I

    move-result v4

    .line 659
    const-string v6, "SmartNS_Utility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phone state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    if-nez p0, :cond_3

    .line 662
    const-string v6, "SmartNS_Utility"

    const-string v7, "diconnect data connection"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v6, "default"

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 672
    :catch_1
    move-exception v1

    .line 674
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 667
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_2
    const-string v6, "SmartNS_Utility"

    const-string v7, "establish data connection"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v6, "default"

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static setDiagEnabled(ZLandroid/content/Context;)V
    .locals 7
    .parameter "on"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 681
    const-string v2, "WirelessSettings"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 683
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "SmartNS_Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDiagEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    if-eqz p0, :cond_2

    .line 687
    const-string v2, "SmartNS_Utility"

    const-string v3, "enable diag port"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    sget-object v2, Lcom/android/settings/SmartNSUtility;->diagPortPath:Ljava/lang/String;

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/android/settings/SmartNSUtility;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 690
    .local v0, i:Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->getMLInterface()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 691
    const-string v2, "com.htc.dmcommandservice.BTSTART"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 695
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "hasDiagEnabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 707
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 693
    .restart local v0       #i:Landroid/content/Intent;
    :cond_1
    const-string v2, "com.htc.dmcommandservice.START"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 697
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    const-string v2, "hasDiagEnabled"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    const-string v2, "SmartNS_Utility"

    const-string v3, "disable diag port"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    sget-object v2, Lcom/android/settings/SmartNSUtility;->diagPortPath:Ljava/lang/String;

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/android/settings/SmartNSUtility;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 702
    .restart local v0       #i:Landroid/content/Intent;
    const-string v2, "com.htc.dmcommandservice.STOP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 704
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "hasDiagEnabled"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public static setMLEnabled(ZLandroid/content/Context;)V
    .locals 12
    .parameter "on"
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 410
    const-string v5, "SmartNS_Utility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setMLEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    if-eqz p0, :cond_2

    .line 414
    const-string v5, "WirelessSettings"

    invoke-virtual {p1, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "isMLOn"

    invoke-interface {v5, v6, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 416
    invoke-static {p1}, Lcom/android/settings/SmartNSUtility;->closeIPT(Landroid/content/Context;)V

    .line 421
    :try_start_0
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 422
    .local v0, cm:Landroid/net/ConnectivityManager;
    new-instance v2, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    invoke-direct {v2, v0}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    .line 424
    .local v2, icm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    const/16 v5, -0x22

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v3

    .line 425
    .local v3, mMHSstatus:I
    if-eqz v3, :cond_0

    .line 426
    const/16 v5, -0x12

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v3

    .line 428
    :cond_0
    const-string v5, "SmartNS_Utility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MHS status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-nez v3, :cond_1

    .line 434
    const-string v5, "SmartNS_Utility"

    const-string v6, "has subscribed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/16 v5, 0x11

    invoke-static {p1, v5}, Lcom/android/settings/SmartNSUtility;->enableRMNET(Landroid/content/Context;I)V

    .line 437
    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    .line 439
    const-string v5, "WirelessSettings"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 440
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "isICMOpening"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 441
    sget-boolean v5, Lcom/android/settings/SmartNSEnabler;->alive:Z

    if-eqz v5, :cond_1

    .line 442
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.htc.android.enableICM.UI"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #icm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    .end local v3           #mMHSstatus:I
    .end local v4           #sp:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 453
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    invoke-static {p1}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 455
    const-string v5, "WirelessSettings"

    invoke-virtual {p1, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "isMLOn"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 457
    const/16 v5, 0x10

    invoke-static {p1, v5}, Lcom/android/settings/SmartNSUtility;->enableRMNET(Landroid/content/Context;I)V

    .line 459
    invoke-static {p1, v8}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    .line 460
    const-string v5, "WirelessSettings"

    invoke-virtual {p1, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 461
    .restart local v4       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "isICMOpening"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 463
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 464
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    move-object v2, v0

    .line 466
    .local v2, icm:Landroid/net/ConnectivityManager;
    const/16 v5, -0x42

    invoke-virtual {v2, v5, v9, v10}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    goto :goto_0
.end method

.method public static setMLInterface(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 727
    if-nez p0, :cond_1

    .line 728
    const-string v0, "service.modem.interface"

    const-string v1, "USB"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 730
    const-string v0, "service.modem.interface"

    const-string v1, "BT"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setNetSharing(ZLandroid/content/Context;)V
    .locals 2
    .parameter "on"
    .parameter "mContext"

    .prologue
    .line 117
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/SmartNSUtility$1;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/SmartNSUtility$1;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    return-void
.end method

.method private static setPCType(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 266
    const-string v2, "internet_sharing"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "is_type"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 267
    .local v1, type:I
    const-string v2, "WirelessSettings"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "retry_tethering"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/NetSharingTypeEnabler;->Set_Connection_Type(Landroid/content/Context;I)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-static {p0, v1}, Lcom/android/settings/NetSharingTypeEnabler;->Set_Connection_Type(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected static setReceiverDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 336
    const-string v1, "SmartNS_Utility"

    const-string v2, "-setNSWifiReceiverDisabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 338
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/NSWifiReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 340
    return-void
.end method

.method protected static setReceiverEnabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 329
    const-string v1, "SmartNS_Utility"

    const-string v2, "-setNSWifiReceiverEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 331
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/NSWifiReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 333
    return-void
.end method

.method public static setSelectedDunId(ILandroid/content/Context;)V
    .locals 5
    .parameter "buttonIdx"
    .parameter "mContext"

    .prologue
    const/4 v4, 0x0

    .line 1029
    sget-object v3, Lcom/android/settings/SmartNSUtility;->mKeyArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1030
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1031
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1032
    .local v2, values:Landroid/content/ContentValues;
    sget-object v3, Lcom/android/settings/SmartNSUtility;->DUN_ID:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    sget-object v3, Lcom/android/settings/SmartNSUtility;->PREFERDUN_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1034
    return-void
.end method

.method protected static stopML(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-static {v0, p0}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 349
    invoke-static {v0, p0}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    .line 350
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    .line 351
    return-void
.end method

.method public static final supportMHS()Z
    .locals 5

    .prologue
    .line 1274
    const-string v0, "android_networking"

    .line 1275
    .local v0, eADSReaderName:Ljava/lang/String;
    const-string v1, "tethering_guard_support"

    .line 1276
    .local v1, keyName:Ljava/lang/String;
    const-string v2, "android_networking"

    const-string v3, "tethering_guard_support"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/settings/SmartNSUtility;->geCustKeyBolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static final supportSingleUsb()Z
    .locals 5

    .prologue
    .line 1288
    const-string v0, "Settings-Wireless_+_network-USB_tethering_"

    .line 1289
    .local v0, eADSReaderName:Ljava/lang/String;
    const-string v1, "Single_USB_tethering"

    .line 1290
    .local v1, keyName:Ljava/lang/String;
    const-string v2, "Settings-Wireless_+_network-USB_tethering_"

    const-string v3, "Single_USB_tethering"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/settings/SmartNSUtility;->geCustKeyBolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static final supportStorage()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1281
    const-string v0, "Settings-Wireless_+_network-USB_tethering_"

    .line 1282
    .local v0, eADSReaderName:Ljava/lang/String;
    const-string v1, "usb_storage_notification"

    .line 1283
    .local v1, keyName:Ljava/lang/String;
    const-string v3, "Settings-Wireless_+_network-USB_tethering_"

    const-string v4, "usb_storage_notification"

    invoke-static {v3, v4, v2}, Lcom/android/settings/SmartNSUtility;->geCustKeyBolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filename"
    .parameter "value"

    .prologue
    .line 748
    const-string v2, "SmartNS_Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeAttrFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    .local v1, writer:Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 766
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 759
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 762
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 764
    .local v0, e:Ljava/io/IOException;
    const-string v2, "SmartNS_Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writedAttrFile()Z
    .locals 2

    .prologue
    .line 743
    const-string v0, "/sys/module/msm72k_udc/parameters/mdm_port_enabled"

    invoke-static {v0}, Lcom/android/settings/SmartNSUtility;->readAttrFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
