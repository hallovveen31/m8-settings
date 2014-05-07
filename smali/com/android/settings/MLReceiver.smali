.class public Lcom/android/settings/MLReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MLReceiver.java"


# static fields
.field public static BT:Z = false

.field public static EAS_AllowIS:Z = false

.field public static final Enable_ICM_UI_Intent:Ljava/lang/String; = "com.htc.android.enableICM.UI"

.field public static final IS_Intent:Ljava/lang/String; = "com.htc.android.startIS"

.field public static final Locate_Intent:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final MLStop_Intent:Ljava/lang/String; = "com.htc.android.stopML"

.field public static final ML_Intent:Ljava/lang/String; = "com.htc.android.startML"

.field public static final Opening_ICM_UI_Intent:Ljava/lang/String; = "com.htc.android.openingICM.UI"

.field public static final PCSC_Intent:Ljava/lang/String; = "com.htc.intent.action.USB_CONNECT2PC"

.field public static final QShutDown_Intent:Ljava/lang/String; = "com.htc.intent.action.QUICKBOOT_POWEROFF"

.field public static final Stop_IS_Intent:Ljava/lang/String; = "com.htc.android.stopIS"

.field private static final TAG:Ljava/lang/String; = "SmartNS_MLReceiver"

.field public static USB:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/android/settings/MLReceiver;->USB:Z

    .line 39
    sput-boolean v0, Lcom/android/settings/MLReceiver;->BT:Z

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-static/range {p1 .. p1}, Lcom/android/settings/TetherSettings;->readCustomizationData(Landroid/content/Context;)V

    .line 66
    const-string v19, "WirelessSettings"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 69
    .local v17, sp:Landroid/content/SharedPreferences;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "com.htc.ats.usbui.DISABLE"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 70
    const-string v19, "UIDisable"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 71
    .local v16, runATS:Z
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "runATS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    const-string v19, "SmartNS_MLReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Run ATS:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v16           #runATS:Z
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "tethering_blocked"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/4 v4, 0x1

    .line 78
    .local v4, blockFromThreeLM:Z
    :goto_0
    const-string v19, "customizedML"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "runATS"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_1

    if-eqz v4, :cond_3

    .line 372
    :cond_1
    :goto_1
    return-void

    .line 76
    .end local v4           #blockFromThreeLM:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 81
    .restart local v4       #blockFromThreeLM:Z
    :cond_3
    const-string v19, "SmartNS_MLReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onReceive : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "alive:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/settings/SmartNSEnabler;->alive:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v12

    .line 86
    .local v12, mlstate:Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "WirelessSettings"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 90
    const-string v19, "sns_type"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 92
    .local v6, defaultType:I
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v19

    sput-boolean v19, Lcom/android/settings/MLReceiver;->USB:Z

    .line 96
    sget-boolean v19, Lcom/android/settings/MLReceiver;->USB:Z

    if-nez v19, :cond_6

    .line 99
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/settings/SmartNSEnabler;->isICMOpening:Z

    .line 100
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "isICMOpening"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/settings/SmartNSUtility;->FailISNotification(Landroid/content/Context;Z)V

    .line 130
    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->getMLInterface()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    if-nez v12, :cond_1

    .line 134
    :cond_5
    const-string v19, "SmartNS_MLReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "USB = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/settings/MLReceiver;->USB:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", modemlink = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v19, "SmartNS_MLReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ML Interface:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->getMLInterface()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-boolean v19, Lcom/android/settings/MLReceiver;->USB:Z

    if-nez v19, :cond_1

    if-eqz v12, :cond_1

    .line 140
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 141
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    .line 142
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    goto/16 :goto_1

    .line 107
    :cond_6
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v6, v0, :cond_8

    .line 109
    if-nez v12, :cond_4

    .line 111
    const-string v19, "ps_enabled"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.htc.android.stop_IPT"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.htc.android.startIS"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 116
    :cond_8
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v6, v0, :cond_4

    .line 118
    if-nez v12, :cond_4

    .line 120
    const-string v19, "ps_enabled"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.htc.android.stop_IPT"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/settings/SmartNSUtility;->StartCTModem(Landroid/content/Context;Z)V

    goto/16 :goto_2

    .line 188
    .end local v6           #defaultType:I
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "com.htc.android.startIS"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 191
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v19

    sput-boolean v19, Lcom/android/settings/MLReceiver;->USB:Z

    .line 192
    const-string v19, "SmartNS_MLReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "USB = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/settings/MLReceiver;->USB:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-boolean v19, Lcom/android/settings/MLReceiver;->USB:Z

    if-eqz v19, :cond_1

    .line 196
    const-string v19, "WirelessSettings"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v20, "hotspotenabled"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 198
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    const-string v20, "com.android.settings"

    const-string v21, "com.android.settings.ISActivity"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 199
    .local v13, nintent:Landroid/content/Intent;
    const/high16 v19, 0x1800

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    const-string v19, "is_dialog_code"

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 205
    .end local v13           #nintent:Landroid/content/Intent;
    :cond_b
    if-nez v12, :cond_1

    .line 208
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/SmartNSUtility;->setMLInterface(I)V

    .line 209
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/settings/ModemLinkTypeEnabler;->Set_Connection_Type(Landroid/content/Context;I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.htc.android.openingICM.UI"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings/SmartNSEnabler;->isICMOpening:Z

    .line 212
    const-string v19, "WirelessSettings"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 213
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "isICMOpening"

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 216
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    .line 217
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    goto/16 :goto_1

    .line 221
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "com.htc.android.startML"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 225
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v19

    sput-boolean v19, Lcom/android/settings/MLReceiver;->USB:Z

    .line 227
    const-string v19, "SmartNS_MLReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "USB = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/settings/MLReceiver;->USB:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mlstate:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " alive: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/settings/SmartNSEnabler;->alive:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-boolean v19, Lcom/android/settings/MLReceiver;->USB:Z

    if-eqz v19, :cond_1

    .line 233
    const-string v19, "WirelessSettings"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v20, "hotspotenabled"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 235
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    const-string v20, "com.android.settings"

    const-string v21, "com.android.settings.ISActivity"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 236
    .restart local v13       #nintent:Landroid/content/Intent;
    const/high16 v19, 0x1800

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 237
    const-string v19, "is_dialog_code"

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 242
    .end local v13           #nintent:Landroid/content/Intent;
    :cond_d
    if-nez v12, :cond_1

    .line 245
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/SmartNSUtility;->setMLInterface(I)V

    .line 246
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/settings/ModemLinkTypeEnabler;->Set_Connection_Type(Landroid/content/Context;I)V

    .line 247
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 248
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    .line 249
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    goto/16 :goto_1

    .line 253
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 255
    const-string v19, "state"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 256
    .local v3, airplane:Z
    if-eqz v3, :cond_1

    if-eqz v12, :cond_1

    .line 257
    invoke-static/range {p1 .. p1}, Lcom/android/settings/SmartNSUtility;->notifyMLAirplane(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 259
    .end local v3           #airplane:Z
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "com.htc.android.stopIS"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 261
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 262
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    .line 263
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    goto/16 :goto_1

    .line 265
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 268
    const-string v19, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 269
    .local v11, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    .line 270
    .local v8, hotstate:I
    const-string v19, "SmartNS_MLReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "hotstate = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v8, v0, :cond_11

    const/16 v19, 0xc

    move/from16 v0, v19

    if-ne v8, v0, :cond_12

    .line 275
    :cond_11
    const-string v19, "WirelessSettings"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "hotspotenabled"

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    :goto_3
    const-string v19, "WirelessSettings"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v20, "hotspotenabled"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 283
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 284
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    .line 285
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    goto/16 :goto_1

    .line 278
    :cond_12
    const-string v19, "WirelessSettings"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "hotspotenabled"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 291
    .end local v8           #hotstate:I
    .end local v11           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 294
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v19

    const/high16 v20, 0x4040

    cmpg-float v19, v19, v20

    if-ltz v19, :cond_1

    .line 296
    const-string v19, "com.htc.admin.extra.ALLOW_STATUS"

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 298
    .local v18, status:I
    if-nez v18, :cond_14

    .line 299
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    .line 302
    :goto_4
    const-string v19, "SmartNS_MLReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "EAS Allow IS:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-boolean v19, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    if-nez v19, :cond_1

    .line 305
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 306
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    .line 307
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    goto/16 :goto_1

    .line 301
    :cond_14
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    goto :goto_4

    .line 310
    .end local v18           #status:I
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 312
    const-string v19, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 314
    .local v5, cm:Landroid/net/ConnectivityManager;
    :try_start_0
    new-instance v9, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    invoke-direct {v9, v5}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    .line 315
    .local v9, icm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    const/16 v19, -0x22

    const/16 v20, -0x1

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v10

    .line 316
    .local v10, mMHSstatus:I
    const-string v19, "SmartNS_MLReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "MHS status:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "WirelessSettings"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 321
    if-nez v10, :cond_16

    .line 323
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->writedAttrFile()Z

    move-result v19

    if-nez v19, :cond_1

    .line 326
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    .line 327
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 328
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 338
    .end local v9           #icm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    .end local v10           #mMHSstatus:I
    :catch_0
    move-exception v7

    .line 339
    .local v7, e:Ljava/lang/Exception;
    const-string v19, "SmartNS_MLReceiver"

    const-string v20, "Exception"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 330
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v9       #icm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    .restart local v10       #mMHSstatus:I
    :cond_16
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_1

    .line 333
    const/16 v19, 0x1

    :try_start_1
    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDataConnection(ZLandroid/content/Context;)V

    .line 334
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setDiagEnabled(ZLandroid/content/Context;)V

    .line 335
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setMLEnabled(ZLandroid/content/Context;)V

    .line 336
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->FailISNotification(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 345
    .end local v5           #cm:Landroid/net/ConnectivityManager;
    .end local v9           #icm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    .end local v10           #mMHSstatus:I
    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 346
    const-string v19, "WirelessSettings"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "isMLOn"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 358
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    const-string v20, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 360
    const-string v19, "WirelessSettings"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 362
    const-string v19, "SNS_Notioncation"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 363
    .local v15, notification:Z
    const-string v19, "SNS_Fail_Notioncation"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 365
    .local v14, notificaiton_fail:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/android/settings/SmartNSUtility;->FailISNotification(Landroid/content/Context;Z)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MLReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    .line 368
    const-string v19, "SmartNS_MLReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "notification:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v19, "SmartNS_MLReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "fail notification:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
