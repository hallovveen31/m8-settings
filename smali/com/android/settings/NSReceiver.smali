.class public Lcom/android/settings/NSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NSReceiver.java"


# static fields
.field public static final ATS_UI_DISABLE:Ljava/lang/String; = "com.htc.ats.usbui.DISABLE"

.field public static BT:Z = false

.field public static final BT_Intent:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field public static EAS_AllowIS:Z = false

.field public static final Enable_IS_UI_Intent:Ljava/lang/String; = "com.htc.android.enableIS.UI"

.field public static final INTENT_ENTITLEMENT_CHECK_FAIL:Ljava/lang/String; = "com.android.internal.telephony.entitlement_check_fail"

.field public static final IS_Intent:Ljava/lang/String; = "com.htc.android.startIS"

.field public static final KeyGuardUnlock_Intent:Ljava/lang/String; = "com.htc.intent.action.KEY_GUARD_UNLOCK"

.field public static final Locate_Intent:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final Network_Intent:Ljava/lang/String; = "com.htc.net.checkNetwork"

.field public static final Opening_IS_UI_Intent:Ljava/lang/String; = "com.htc.android.openingIS.UI"

.field public static final PCSC_Intent:Ljava/lang/String; = "com.htc.intent.action.USB_CONNECT2PC"

.field public static final ShutDown_Intent:Ljava/lang/String; = "com.htc.intent.action.QUICKBOOT_POWEROFF"

.field private static final TAG:Ljava/lang/String; = "SmartNS_NSReceiver"

.field public static USB:Z

.field public static defaultType:I

.field public static hasTethered:Z

.field public static isNSOpening:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/NSReceiver;->USB:Z

    sput-boolean v1, Lcom/android/settings/NSReceiver;->BT:Z

    sput-boolean v1, Lcom/android/settings/NSReceiver;->hasTethered:Z

    sput-boolean v1, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    sput v1, Lcom/android/settings/NSReceiver;->defaultType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isSlowCharging(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v3, "SmartNS_NSReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index of the first 1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private parseSupportExtension(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    if-lez p1, :cond_0

    rem-int/lit8 v1, p1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    div-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method

.method private popUpWaringDialog(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.ISActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x1800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "is_dialog_code"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v2, "WirelessSettings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "WarningUI"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showVZWChargerNotification(Landroid/content/Context;IZ)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, ""

    const-string v3, ""

    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    const v1, 0x1080078

    if-eqz p3, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    if-nez p2, :cond_1

    const v7, 0x7f0c0762

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c0763

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v7, 0x1080078

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_1
    return-void

    :cond_1
    if-ne p2, v9, :cond_0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f0c0768

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c0769

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const v7, 0x7f0c0765

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c076b

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 51

    invoke-static/range {p1 .. p1}, Lcom/android/settings/TetherSettings;->readCustomizationData(Landroid/content/Context;)V

    const-string v46, "WirelessSettings"

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v38

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.ats.usbui.DISABLE"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_0

    const-string v46, "UIDisable"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v35

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "runATS"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Run ATS:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.usb.USB_HOST_CABLE"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "extras = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_1

    const-string v46, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/NotificationManager;

    const v20, 0x1080079

    const-string v46, "connected"

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_9

    const/16 v46, 0x0

    new-instance v47, Landroid/content/Intent;

    invoke-direct/range {v47 .. v47}, Landroid/content/Intent;-><init>()V

    const/16 v48, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v46

    move-object/from16 v2, v47

    move/from16 v3, v48

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v31

    const-string v42, ""

    const-string v41, ""

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v46

    if-eqz v46, :cond_8

    const v46, 0x7f0c0771

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    const v46, 0x7f0c0772

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    :goto_0
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v42

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v0, v41

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v46, 0x1080078

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const-wide/16 v46, 0x0

    move-wide/from16 v0, v46

    invoke-virtual {v13, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v46

    move-object/from16 v0, v29

    move/from16 v1, v20

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.intent.action.BATTERY_CHANGE_PARTIAL"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    const-string v46, "plugged"

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v32

    const-string v46, "support_extension"

    const/16 v47, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v40

    const-string v46, "unsupport_charger"

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v44

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "project = Verizon, plugged = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", support_extension = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", unsupport_charger = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver;->parseSupportExtension(I)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v32, :cond_2

    if-eqz v44, :cond_d

    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/NSReceiver;->isSlowCharging(Ljava/util/ArrayList;)Z

    move-result v46

    if-eqz v46, :cond_a

    const/16 v43, 0x1

    :goto_2
    const/16 v46, -0x1

    move/from16 v0, v43

    move/from16 v1, v46

    if-eq v0, v1, :cond_c

    const/16 v46, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/NSReceiver;->showVZWChargerNotification(Landroid/content/Context;IZ)V

    if-nez v43, :cond_3

    const-string v46, "charger_not_support_dialog_dont_show"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    :cond_3
    const/16 v46, 0x1

    move/from16 v0, v43

    move/from16 v1, v46

    if-ne v0, v1, :cond_4

    const-string v46, "charger_current_low_dialog_dont_show"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    :cond_4
    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Charger don\'t ask = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_5

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-class v46, Lcom/android/settings/ChargerStatusDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v46, "charger_status"

    move-object/from16 v0, v46

    move/from16 v1, v43

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v46, 0x1000

    move/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string v47, "tethering_blocked"

    const/16 v48, 0x0

    invoke-static/range {v46 .. v48}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_e

    const/4 v10, 0x1

    :goto_4
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->supportStorage()Z

    move-result v46

    if-eqz v46, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_6

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "storage_prev_type"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v46

    sput-boolean v46, Lcom/android/settings/NSReceiver;->USB:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    sget-boolean v47, Lcom/android/settings/NSReceiver;->USB:Z

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->SetStorageNotification(Landroid/content/Context;Z)V

    :cond_6
    const-string v46, "customizedNS"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_7

    const-string v46, "runATS"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-nez v46, :cond_7

    if-eqz v10, :cond_f

    :cond_7
    :goto_5
    return-void

    :cond_8
    const v46, 0x7f0c0757

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    const v46, 0x7f0c0758

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    :cond_a
    if-eqz v44, :cond_b

    const/16 v43, 0x0

    goto/16 :goto_2

    :cond_b
    const/16 v43, -0x1

    goto/16 :goto_2

    :cond_c
    const/16 v46, -0x1

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/NSReceiver;->showVZWChargerNotification(Landroid/content/Context;IZ)V

    new-instance v46, Landroid/content/Intent;

    const-string v47, "com.htc.charger.dont.care"

    invoke-direct/range {v46 .. v47}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_d
    const/16 v46, -0x1

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/NSReceiver;->showVZWChargerNotification(Landroid/content/Context;IZ)V

    goto/16 :goto_3

    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_f
    const-string v46, "hasTethered"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    sput-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    const-string v46, "isNSOpening"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    sput-boolean v46, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "onReceive : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasTethered:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " isNSOpening:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "android.intent.action.USER_PRESENT"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_11

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    const-wide/high16 v48, 0x4014

    cmpl-double v46, v46, v48

    if-lez v46, :cond_11

    const-string v46, "kguard_locked"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Landroid/content/Intent;

    const-string v48, "com.htc.intent.action.KEY_GUARD_UNLOCK"

    invoke-direct/range {v47 .. v48}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_10
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "kguard_locked"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.intent.action.KEY_GUARD_UNLOCK"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1d

    :cond_12
    const-string v46, "mdm_Tethering"

    const/16 v47, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v46, "mdm_usb"

    const/16 v47, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v46

    sput-boolean v46, Lcom/android/settings/NSReceiver;->USB:Z

    const-string v46, "sns_type"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v46

    sput v46, Lcom/android/settings/NSReceiver;->defaultType:I

    sget-boolean v46, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v46, :cond_13

    sget-boolean v46, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-nez v46, :cond_15

    :cond_13
    const/16 v46, 0x0

    sput-boolean v46, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSOpening"

    sget-boolean v48, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->FailISNotification(Landroid/content/Context;Z)V

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSClosing"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "WarningUI"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_14
    :goto_6
    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "USB = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/NSReceiver;->USB:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasTethered = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " isNSOpening: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v46, Lcom/android/settings/NSReceiver;->USB:Z

    if-nez v46, :cond_7

    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v46, :cond_7

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_5

    :cond_15
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    const-wide/high16 v48, 0x4014

    cmpl-double v46, v46, v48

    if-lez v46, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const-string v47, "keyguard"

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/KeyguardManager;

    if-eqz v23, :cond_19

    invoke-virtual/range {v23 .. v23}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v46

    if-eqz v46, :cond_19

    invoke-virtual/range {v23 .. v23}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v46

    if-eqz v46, :cond_19

    const/16 v21, 0x1

    :goto_7
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "kguard_locked"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "locked:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v23 .. v23}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "security:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v23 .. v23}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "isLocked:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v21, :cond_7

    :cond_16
    sget v46, Lcom/android/settings/NSReceiver;->defaultType:I

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_14

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "TMOUS checkbox:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v48

    const-string v49, "tethering_checkbox_tmous"

    const/16 v50, 0x0

    invoke-static/range {v48 .. v50}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_17

    sget-boolean v46, Lcom/android/settings/HtcFeatureList;->FEATURE_SPRINT_CHAMELEON:Z

    if-eqz v46, :cond_1c

    :cond_17
    const-string v46, "ps_enabled"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Landroid/content/Intent;

    const-string v48, "com.htc.android.stop_IPT"

    invoke-direct/range {v47 .. v48}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_18
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isApnAvailable()Z

    move-result v46

    if-eqz v46, :cond_1a

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v46, "apn_from"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const-class v47, Lcom/android/settings/SmartNetSharingApnDialog;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v46, 0x1000

    move/from16 v0, v46

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_19
    const/16 v21, 0x0

    goto/16 :goto_7

    :cond_1a
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v46

    if-eqz v46, :cond_1b

    invoke-static/range {p1 .. p1}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string v47, "tethering_checkbox_tmous"

    const/16 v48, 0x0

    invoke-static/range {v46 .. v48}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v46

    if-nez v46, :cond_1b

    new-instance v46, Landroid/content/Intent;

    invoke-direct/range {v46 .. v46}, Landroid/content/Intent;-><init>()V

    const-string v47, "com.android.settings"

    const-string v48, "com.android.settings.ISActivity"

    invoke-virtual/range {v46 .. v48}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    const/high16 v46, 0x1000

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v46, "is_dialog_code"

    const/16 v47, 0xa

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Landroid/content/Intent;

    const-string v48, "com.htc.android.openingIS.UI"

    invoke-direct/range {v47 .. v48}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_6

    :cond_1c
    const/16 v46, 0x0

    sput-boolean v46, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSOpening"

    sget-boolean v48, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Landroid/content/Intent;

    const-string v48, "com.htc.android.enableIS.UI"

    invoke-direct/range {v47 .. v48}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.android.startIS"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_25

    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v46

    sput-boolean v46, Lcom/android/settings/NSReceiver;->USB:Z

    const-string v46, "sns_type"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v46

    sput v46, Lcom/android/settings/NSReceiver;->defaultType:I

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "USB = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/NSReceiver;->USB:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "TMOUS checkbox:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v48

    const-string v49, "tethering_checkbox_tmous"

    const/16 v50, 0x0

    invoke-static/range {v48 .. v50}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v46, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v46, :cond_7

    sget v46, Lcom/android/settings/NSReceiver;->defaultType:I

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_1e

    sget v46, Lcom/android/settings/NSReceiver;->defaultType:I

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_7

    :cond_1e
    const-string v46, "usb_tethering_auto_enable"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v46

    const/16 v47, 0x57

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_1f

    if-nez v37, :cond_1f

    new-instance v46, Landroid/content/Intent;

    invoke-direct/range {v46 .. v46}, Landroid/content/Intent;-><init>()V

    const-string v47, "com.android.settings"

    const-string v48, "com.android.settings.ISActivity"

    invoke-virtual/range {v46 .. v48}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    const/high16 v46, 0x1000

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v46, "is_dialog_code"

    const/16 v47, 0x9

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_5

    :cond_1f
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v46

    const/16 v47, 0xc

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_20

    if-nez v37, :cond_20

    new-instance v26, Landroid/content/Intent;

    const-string v46, "com.htc.usbtethering.WARNING_ACG"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v46, 0x1800

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v46, "is_dialog_code"

    const/16 v47, 0x7

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_5

    :cond_20
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTmousSku()Z

    move-result v46

    if-eqz v46, :cond_21

    invoke-static/range {p1 .. p1}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v46

    if-eqz v46, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string v47, "tethering_checkbox_tmous"

    const/16 v48, 0x0

    invoke-static/range {v46 .. v48}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v46

    if-nez v46, :cond_21

    new-instance v46, Landroid/content/Intent;

    invoke-direct/range {v46 .. v46}, Landroid/content/Intent;-><init>()V

    const-string v47, "com.android.settings"

    const-string v48, "com.android.settings.ISActivity"

    invoke-virtual/range {v46 .. v48}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    const/high16 v46, 0x1000

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v46, "is_dialog_code"

    const/16 v47, 0xa

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    :cond_21
    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v46, :cond_24

    invoke-static/range {p1 .. p1}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_22

    sget-boolean v46, Lcom/android/settings/HtcFeatureList;->FEATURE_SPRINT_CHAMELEON:Z

    if-eqz v46, :cond_24

    :cond_22
    sget-boolean v46, Lcom/android/settings/HtcFeatureList;->FEATURE_SPRINT_CHAMELEON:Z

    if-eqz v46, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver;->popUpWaringDialog(Landroid/content/Context;)V

    :cond_23
    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_5

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_7

    if-nez v37, :cond_7

    new-instance v46, Landroid/content/Intent;

    invoke-direct/range {v46 .. v46}, Landroid/content/Intent;-><init>()V

    const-string v47, "com.android.settings"

    const-string v48, "com.android.settings.ISActivity"

    invoke-virtual/range {v46 .. v48}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    const/high16 v46, 0x1800

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v46, "is_dialog_code"

    const/16 v47, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v46, Landroid/content/Intent;

    const-string v47, "com.htc.android.startIS.Fail"

    invoke-direct/range {v46 .. v47}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "alive = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/SmartNSEnabler;->alive:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " hasTethered = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_25
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.android.internal.telephony.entitlement_check_fail"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_26

    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v46, :cond_7

    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_5

    :cond_26
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2e

    const-string v46, "sns_type"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v46

    sput v46, Lcom/android/settings/NSReceiver;->defaultType:I

    sget v46, Lcom/android/settings/NSReceiver;->defaultType:I

    const/16 v47, 0x6

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const-string v47, "connectivity"

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v25

    const-string v46, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/16 v46, 0x0

    sput-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_27
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_29

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v36, v30

    check-cast v36, Ljava/lang/String;

    move-object/from16 v8, v25

    array-length v0, v8

    move/from16 v22, v0

    const/16 v18, 0x0

    :goto_8
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_27

    aget-object v33, v8, v18

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_28

    const/16 v46, 0x1

    sput-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    :cond_28
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    :cond_29
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "hasTethered"

    sget-boolean v48, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v46, "isNSOpening"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    sput-boolean v46, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v46, :cond_2c

    const/16 v46, 0x0

    sput-boolean v46, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSOpening"

    sget-boolean v48, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v46, "SNS_Notioncation"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-nez v46, :cond_2a

    const/16 v46, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    :cond_2a
    new-instance v46, Landroid/content/Intent;

    const-string v47, "com.htc.android.enableIS.UI"

    invoke-direct/range {v46 .. v47}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2b
    :goto_9
    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Tethered state change:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " isNSOpening:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2c
    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v46, :cond_2b

    sget-boolean v46, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    if-nez v46, :cond_2b

    invoke-static/range {p1 .. p1}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_2d

    new-instance v46, Landroid/content/Intent;

    const-string v47, "com.htc.android.enableIS.UI"

    invoke-direct/range {v46 .. v47}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2d
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSClosing"

    sget-boolean v48, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_9

    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_30

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "get ShutDown intent. hasTethered:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " isNSOpening:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "newtork:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v46, :cond_2f

    sget-boolean v46, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    if-eqz v46, :cond_7

    :cond_2f
    const-string v46, "NetSharing"

    const-string v47, "setNetSharing(0)"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_5

    :cond_30
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_33

    const-string v46, "com.htc.admin.extra.ALLOW_STATUS"

    const/16 v47, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v39

    if-nez v39, :cond_32

    const/16 v46, 0x0

    sput-boolean v46, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    :goto_a
    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "EAS Allow IS:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v46, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-nez v46, :cond_7

    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v46, :cond_31

    sget-boolean v46, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    if-eqz v46, :cond_7

    :cond_31
    const/16 v46, 0x0

    :try_start_0
    move/from16 v0, v46

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :cond_32
    const/16 v46, 0x1

    sput-boolean v46, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    goto :goto_a

    :cond_33
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_37

    const-string v46, "requestMHS"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    sget-boolean v46, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MHS:Z

    if-eqz v46, :cond_7

    const-string v46, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    :try_start_1
    new-instance v19, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    const/16 v46, -0x22

    const/16 v47, -0x1

    const/16 v48, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    move/from16 v2, v47

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v24

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "MHS status:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v34, :cond_35

    if-nez v24, :cond_35

    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v46, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Landroid/content/Intent;

    const-string v48, "com.htc.android.startIS"

    invoke-direct/range {v47 .. v48}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v46, "SmartNS_NSReceiver"

    const-string v47, "broadcast com.htc.android.startIS"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_b
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "requestMHS"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v15

    const-string v46, "SmartNS_NSReceiver"

    const-string v47, "Exception"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-static {v0, v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :cond_35
    const/16 v46, 0x0

    :try_start_2
    sput-boolean v46, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSOpening"

    sget-boolean v48, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v34, :cond_36

    new-instance v46, Landroid/content/Intent;

    const-string v47, "com.htc.android.enableIS.UI"

    invoke-direct/range {v46 .. v47}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_36
    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v46, :cond_34

    const/16 v46, 0x1

    move/from16 v0, v24

    move/from16 v1, v46

    if-ne v0, v1, :cond_34

    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :cond_37
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->FailISNotification(Landroid/content/Context;Z)V

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "hasTethered"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSOpening"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5

    :cond_38
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_39

    const-string v46, "SNS_Notioncation"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const-string v46, "SNS_Fail_Notioncation"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->FailISNotification(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "notification:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v46, "SmartNS_NSReceiver"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "fail notification:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_39
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.net.checkNetwork"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_7

    const-string v46, "WarningUI"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v46, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_7

    if-nez v45, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver;->popUpWaringDialog(Landroid/content/Context;)V

    goto/16 :goto_5
.end method
