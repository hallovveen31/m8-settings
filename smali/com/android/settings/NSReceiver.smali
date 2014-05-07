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

    .prologue
    const/4 v1, 0x0

    .line 57
    sput-boolean v1, Lcom/android/settings/NSReceiver;->USB:Z

    .line 58
    sput-boolean v1, Lcom/android/settings/NSReceiver;->BT:Z

    .line 60
    sput-boolean v1, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 61
    sput-boolean v1, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    .line 63
    sput v1, Lcom/android/settings/NSReceiver;->defaultType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isSlowCharging(Ljava/util/ArrayList;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, bit:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 562
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v1

    .line 566
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 567
    .local v0, index:I
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

    .line 568
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    move v1, v2

    .line 569
    goto :goto_0
.end method

.method private parseSupportExtension(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "support_extension"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v0, bit:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-gtz p1, :cond_1

    .line 548
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_0
    return-object v0

    .line 552
    :cond_1
    :goto_0
    if-lez p1, :cond_0

    .line 553
    rem-int/lit8 v1, p1, 0x2

    .line 554
    .local v1, mod:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    div-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method

.method private popUpWaringDialog(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 614
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.ISActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 615
    .local v0, mintent:Landroid/content/Intent;
    const/high16 v2, 0x1800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 616
    const-string v2, "is_dialog_code"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 619
    const-string v2, "WirelessSettings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 620
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "WarningUI"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 621
    return-void
.end method

.method private showVZWChargerNotification(Landroid/content/Context;IZ)V
    .locals 10
    .parameter "context"
    .parameter "type"
    .parameter "visible"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 576
    const-string v6, ""

    .line 577
    .local v6, title:Ljava/lang/String;
    const-string v3, ""

    .line 578
    .local v3, message:Ljava/lang/String;
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 579
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x1080078

    .line 581
    .local v1, id:I
    if-eqz p3, :cond_3

    .line 582
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 583
    .local v2, intent:Landroid/content/Intent;
    invoke-static {p1, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 584
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    if-nez p2, :cond_1

    .line 585
    const v7, 0x7f0c0762

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 586
    const v7, 0x7f0c0763

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 600
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 601
    .local v0, connectToPCNotifyBuilder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 602
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 603
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 604
    const v7, 0x1080078

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 605
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 606
    const-wide/16 v7, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 607
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 611
    .end local v0           #connectToPCNotifyBuilder:Landroid/app/Notification$Builder;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 587
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v5       #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    if-ne p2, v9, :cond_0

    .line 588
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 590
    const v7, 0x7f0c0768

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 591
    const v7, 0x7f0c0769

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 595
    :cond_2
    const v7, 0x7f0c0765

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 596
    const v7, 0x7f0c076b

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 609
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :cond_3
    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 51
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    invoke-static/range {p1 .. p1}, Lcom/android/settings/TetherSettings;->readCustomizationData(Landroid/content/Context;)V

    .line 89
    const-string v46, "WirelessSettings"

    const/16 v47, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v38

    .line 91
    .local v38, sp:Landroid/content/SharedPreferences;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.ats.usbui.DISABLE"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_0

    .line 92
    const-string v46, "UIDisable"

    const/16 v47, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v35

    .line 93
    .local v35, runATS:Z
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "runATS"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
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

    .line 97
    .end local v35           #runATS:Z
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.usb.USB_HOST_CABLE"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 99
    .local v16, extras:Landroid/os/Bundle;
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

    .line 100
    if-eqz v16, :cond_1

    .line 101
    const-string v46, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/NotificationManager;

    .line 102
    .local v29, notificationManager:Landroid/app/NotificationManager;
    const v20, 0x1080079

    .line 104
    .local v20, id:I
    const-string v46, "connected"

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_9

    .line 105
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

    .line 106
    .local v31, pendingIntent:Landroid/app/PendingIntent;
    const-string v42, ""

    .line 107
    .local v42, title:Ljava/lang/String;
    const-string v41, ""

    .line 108
    .local v41, text:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v46

    if-eqz v46, :cond_8

    .line 109
    const v46, 0x7f0c0771

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    .line 110
    const v46, 0x7f0c0772

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    .line 116
    :goto_0
    new-instance v13, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v13, connectToPCNotifyBuilder:Landroid/app/Notification$Builder;
    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 118
    move-object/from16 v0, v42

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 119
    move-object/from16 v0, v41

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 120
    const v46, 0x1080078

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 121
    const-wide/16 v46, 0x0

    move-wide/from16 v0, v46

    invoke-virtual {v13, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 122
    const/16 v46, 0x1

    move/from16 v0, v46

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 123
    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 124
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v46

    move-object/from16 v0, v29

    move/from16 v1, v20

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 132
    .end local v13           #connectToPCNotifyBuilder:Landroid/app/Notification$Builder;
    .end local v16           #extras:Landroid/os/Bundle;
    .end local v20           #id:I
    .end local v29           #notificationManager:Landroid/app/NotificationManager;
    .end local v31           #pendingIntent:Landroid/app/PendingIntent;
    .end local v41           #text:Ljava/lang/String;
    .end local v42           #title:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.intent.action.BATTERY_CHANGE_PARTIAL"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_5

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 134
    .restart local v16       #extras:Landroid/os/Bundle;
    const-string v46, "plugged"

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v32

    .line 135
    .local v32, plugged:I
    const-string v46, "support_extension"

    const/16 v47, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v40

    .line 136
    .local v40, support_extension:I
    const-string v46, "unsupport_charger"

    move-object/from16 v0, v16

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v44

    .line 137
    .local v44, unsupport_charger:Z
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

    .line 139
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver;->parseSupportExtension(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 141
    .local v9, bit:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v32, :cond_2

    if-eqz v44, :cond_d

    .line 144
    :cond_2
    const/4 v14, 0x0

    .line 145
    .local v14, dontAsk:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/NSReceiver;->isSlowCharging(Ljava/util/ArrayList;)Z

    move-result v46

    if-eqz v46, :cond_a

    .line 146
    const/16 v43, 0x1

    .line 153
    .local v43, type:I
    :goto_2
    const/16 v46, -0x1

    move/from16 v0, v43

    move/from16 v1, v46

    if-eq v0, v1, :cond_c

    .line 154
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v43

    move/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/NSReceiver;->showVZWChargerNotification(Landroid/content/Context;IZ)V

    .line 155
    if-nez v43, :cond_3

    .line 156
    const-string v46, "charger_not_support_dialog_dont_show"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 158
    :cond_3
    const/16 v46, 0x1

    move/from16 v0, v43

    move/from16 v1, v46

    if-ne v0, v1, :cond_4

    .line 159
    const-string v46, "charger_current_low_dialog_dont_show"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 161
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

    .line 162
    if-nez v14, :cond_5

    .line 163
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v11, chargerIntent:Landroid/content/Intent;
    const-class v46, Lcom/android/settings/ChargerStatusDialog;

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    const-string v46, "charger_status"

    move-object/from16 v0, v46

    move/from16 v1, v43

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const/high16 v46, 0x1000

    move/from16 v0, v46

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    .end local v9           #bit:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11           #chargerIntent:Landroid/content/Intent;
    .end local v14           #dontAsk:Z
    .end local v16           #extras:Landroid/os/Bundle;
    .end local v32           #plugged:I
    .end local v40           #support_extension:I
    .end local v43           #type:I
    .end local v44           #unsupport_charger:Z
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    .line 180
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

    .line 182
    .local v10, blockFromThreeLM:Z
    :goto_4
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->supportStorage()Z

    move-result v46

    if-eqz v46, :cond_6

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_6

    .line 186
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "storage_prev_type"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 188
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v46

    sput-boolean v46, Lcom/android/settings/NSReceiver;->USB:Z

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    sget-boolean v47, Lcom/android/settings/NSReceiver;->USB:Z

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->SetStorageNotification(Landroid/content/Context;Z)V

    .line 196
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

    .line 541
    :cond_7
    :goto_5
    return-void

    .line 112
    .end local v10           #blockFromThreeLM:Z
    .restart local v16       #extras:Landroid/os/Bundle;
    .restart local v20       #id:I
    .restart local v29       #notificationManager:Landroid/app/NotificationManager;
    .restart local v31       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v41       #text:Ljava/lang/String;
    .restart local v42       #title:Ljava/lang/String;
    :cond_8
    const v46, 0x7f0c0757

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    .line 113
    const v46, 0x7f0c0758

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_0

    .line 126
    .end local v31           #pendingIntent:Landroid/app/PendingIntent;
    .end local v41           #text:Ljava/lang/String;
    .end local v42           #title:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 147
    .end local v20           #id:I
    .end local v29           #notificationManager:Landroid/app/NotificationManager;
    .restart local v9       #bit:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v14       #dontAsk:Z
    .restart local v32       #plugged:I
    .restart local v40       #support_extension:I
    .restart local v44       #unsupport_charger:Z
    :cond_a
    if-eqz v44, :cond_b

    .line 148
    const/16 v43, 0x0

    .restart local v43       #type:I
    goto/16 :goto_2

    .line 150
    .end local v43           #type:I
    :cond_b
    const/16 v43, -0x1

    .restart local v43       #type:I
    goto/16 :goto_2

    .line 170
    :cond_c
    const/16 v46, -0x1

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/NSReceiver;->showVZWChargerNotification(Landroid/content/Context;IZ)V

    .line 171
    new-instance v46, Landroid/content/Intent;

    const-string v47, "com.htc.charger.dont.care"

    invoke-direct/range {v46 .. v47}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 174
    .end local v14           #dontAsk:Z
    .end local v43           #type:I
    :cond_d
    const/16 v46, -0x1

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/NSReceiver;->showVZWChargerNotification(Landroid/content/Context;IZ)V

    goto/16 :goto_3

    .line 180
    .end local v9           #bit:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16           #extras:Landroid/os/Bundle;
    .end local v32           #plugged:I
    .end local v40           #support_extension:I
    .end local v44           #unsupport_charger:Z
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 202
    .restart local v10       #blockFromThreeLM:Z
    :cond_f
    const-string v46, "hasTethered"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    sput-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 203
    const-string v46, "isNSOpening"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    sput-boolean v46, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    .line 204
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

    .line 207
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

    .line 210
    const-string v46, "kguard_locked"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_10

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Landroid/content/Intent;

    const-string v48, "com.htc.intent.action.KEY_GUARD_UNLOCK"

    invoke-direct/range {v47 .. v48}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    :cond_10
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "kguard_locked"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5

    .line 218
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

    .line 220
    :cond_12
    const-string v46, "mdm_Tethering"

    const/16 v47, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 221
    .local v4, Tethering_allow:Z
    const-string v46, "mdm_usb"

    const/16 v47, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 223
    .local v5, USB_allow:Z
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 227
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v46

    sput-boolean v46, Lcom/android/settings/NSReceiver;->USB:Z

    .line 228
    const-string v46, "sns_type"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v46

    sput v46, Lcom/android/settings/NSReceiver;->defaultType:I

    .line 230
    sget-boolean v46, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v46, :cond_13

    sget-boolean v46, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-nez v46, :cond_15

    .line 233
    :cond_13
    const/16 v46, 0x0

    sput-boolean v46, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    .line 234
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSOpening"

    sget-boolean v48, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->FailISNotification(Landroid/content/Context;Z)V

    .line 237
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSClosing"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 238
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "WarningUI"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 296
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

    .line 298
    sget-boolean v46, Lcom/android/settings/NSReceiver;->USB:Z

    if-nez v46, :cond_7

    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v46, :cond_7

    .line 301
    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_5

    .line 241
    :cond_15
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    const-wide/high16 v48, 0x4014

    cmpl-double v46, v46, v48

    if-lez v46, :cond_16

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const-string v47, "keyguard"

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/KeyguardManager;

    .line 245
    .local v23, mKeyguardManager:Landroid/app/KeyguardManager;
    if-eqz v23, :cond_19

    invoke-virtual/range {v23 .. v23}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v46

    if-eqz v46, :cond_19

    invoke-virtual/range {v23 .. v23}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v46

    if-eqz v46, :cond_19

    const/16 v21, 0x1

    .line 247
    .local v21, isLocked:Z
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

    .line 248
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

    .line 250
    if-nez v21, :cond_7

    .line 253
    .end local v21           #isLocked:Z
    .end local v23           #mKeyguardManager:Landroid/app/KeyguardManager;
    :cond_16
    sget v46, Lcom/android/settings/NSReceiver;->defaultType:I

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_14

    .line 255
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

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_17

    sget-boolean v46, Lcom/android/settings/HtcFeatureList;->FEATURE_SPRINT_CHAMELEON:Z

    if-eqz v46, :cond_1c

    .line 258
    :cond_17
    const-string v46, "ps_enabled"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-eqz v46, :cond_18

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Landroid/content/Intent;

    const-string v48, "com.htc.android.stop_IPT"

    invoke-direct/range {v47 .. v48}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    :cond_18
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isApnAvailable()Z

    move-result v46

    if-eqz v46, :cond_1a

    .line 263
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v7, apnIntent:Landroid/content/Intent;
    const-string v46, "apn_from"

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const-class v47, Lcom/android/settings/SmartNetSharingApnDialog;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 266
    const/high16 v46, 0x1000

    move/from16 v0, v46

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 245
    .end local v7           #apnIntent:Landroid/content/Intent;
    .restart local v23       #mKeyguardManager:Landroid/app/KeyguardManager;
    :cond_19
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 269
    .end local v23           #mKeyguardManager:Landroid/app/KeyguardManager;
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

    .line 272
    new-instance v46, Landroid/content/Intent;

    invoke-direct/range {v46 .. v46}, Landroid/content/Intent;-><init>()V

    const-string v47, "com.android.settings"

    const-string v48, "com.android.settings.ISActivity"

    invoke-virtual/range {v46 .. v48}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    .line 273
    .local v26, mintent:Landroid/content/Intent;
    const/high16 v46, 0x1000

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 274
    const-string v46, "is_dialog_code"

    const/16 v47, 0xa

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 279
    .end local v26           #mintent:Landroid/content/Intent;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Landroid/content/Intent;

    const-string v48, "com.htc.android.openingIS.UI"

    invoke-direct/range {v47 .. v48}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 280
    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_6

    .line 288
    :cond_1c
    const/16 v46, 0x0

    sput-boolean v46, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    .line 289
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSOpening"

    sget-boolean v48, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Landroid/content/Intent;

    const-string v48, "com.htc.android.enableIS.UI"

    invoke-direct/range {v47 .. v48}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 305
    .end local v4           #Tethering_allow:Z
    .end local v5           #USB_allow:Z
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.android.startIS"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_25

    .line 307
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v46

    sput-boolean v46, Lcom/android/settings/NSReceiver;->USB:Z

    .line 308
    const-string v46, "sns_type"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v46

    sput v46, Lcom/android/settings/NSReceiver;->defaultType:I

    .line 309
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

    .line 310
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

    .line 311
    sget-boolean v46, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v46, :cond_7

    .line 315
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

    .line 318
    :cond_1e
    const-string v46, "usb_tethering_auto_enable"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 320
    .local v37, smartNSChecked:Z
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v46

    const/16 v47, 0x57

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_1f

    if-nez v37, :cond_1f

    .line 322
    new-instance v46, Landroid/content/Intent;

    invoke-direct/range {v46 .. v46}, Landroid/content/Intent;-><init>()V

    const-string v47, "com.android.settings"

    const-string v48, "com.android.settings.ISActivity"

    invoke-virtual/range {v46 .. v48}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    .line 323
    .restart local v26       #mintent:Landroid/content/Intent;
    const/high16 v46, 0x1000

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 324
    const-string v46, "is_dialog_code"

    const/16 v47, 0x9

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 326
    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_5

    .line 329
    .end local v26           #mintent:Landroid/content/Intent;
    :cond_1f
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSkuId()I

    move-result v46

    const/16 v47, 0xc

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_20

    if-nez v37, :cond_20

    .line 331
    new-instance v26, Landroid/content/Intent;

    const-string v46, "com.htc.usbtethering.WARNING_ACG"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .restart local v26       #mintent:Landroid/content/Intent;
    const/high16 v46, 0x1800

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 333
    const-string v46, "is_dialog_code"

    const/16 v47, 0x7

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 336
    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_5

    .line 338
    .end local v26           #mintent:Landroid/content/Intent;
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

    .line 341
    new-instance v46, Landroid/content/Intent;

    invoke-direct/range {v46 .. v46}, Landroid/content/Intent;-><init>()V

    const-string v47, "com.android.settings"

    const-string v48, "com.android.settings.ISActivity"

    invoke-virtual/range {v46 .. v48}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    .line 342
    .restart local v26       #mintent:Landroid/content/Intent;
    const/high16 v46, 0x1000

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 343
    const-string v46, "is_dialog_code"

    const/16 v47, 0xa

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 348
    .end local v26           #mintent:Landroid/content/Intent;
    :cond_21
    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v46, :cond_24

    invoke-static/range {p1 .. p1}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_22

    sget-boolean v46, Lcom/android/settings/HtcFeatureList;->FEATURE_SPRINT_CHAMELEON:Z

    if-eqz v46, :cond_24

    .line 350
    :cond_22
    sget-boolean v46, Lcom/android/settings/HtcFeatureList;->FEATURE_SPRINT_CHAMELEON:Z

    if-eqz v46, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_23

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver;->popUpWaringDialog(Landroid/content/Context;)V

    .line 352
    :cond_23
    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_5

    .line 354
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_7

    if-nez v37, :cond_7

    .line 357
    new-instance v46, Landroid/content/Intent;

    invoke-direct/range {v46 .. v46}, Landroid/content/Intent;-><init>()V

    const-string v47, "com.android.settings"

    const-string v48, "com.android.settings.ISActivity"

    invoke-virtual/range {v46 .. v48}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    .line 358
    .restart local v26       #mintent:Landroid/content/Intent;
    const/high16 v46, 0x1800

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 359
    const-string v46, "is_dialog_code"

    const/16 v47, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 362
    new-instance v46, Landroid/content/Intent;

    const-string v47, "com.htc.android.startIS.Fail"

    invoke-direct/range {v46 .. v47}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
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

    .line 366
    .end local v26           #mintent:Landroid/content/Intent;
    .end local v37           #smartNSChecked:Z
    :cond_25
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.android.internal.telephony.entitlement_check_fail"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_26

    .line 368
    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v46, :cond_7

    .line 369
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_5

    .line 371
    :cond_26
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2e

    .line 373
    const-string v46, "sns_type"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v46

    sput v46, Lcom/android/settings/NSReceiver;->defaultType:I

    .line 374
    sget v46, Lcom/android/settings/NSReceiver;->defaultType:I

    const/16 v47, 0x6

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_7

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const-string v47, "connectivity"

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    .line 377
    .local v12, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v25

    .line 379
    .local v25, mUsbRegexs:[Ljava/lang/String;
    const-string v46, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 381
    .local v6, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v46, 0x0

    sput-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 382
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_27
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_29

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .local v30, o:Ljava/lang/String;
    move-object/from16 v36, v30

    .line 383
    check-cast v36, Ljava/lang/String;

    .line 384
    .local v36, s:Ljava/lang/String;
    move-object/from16 v8, v25

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_27

    aget-object v33, v8, v18

    .line 385
    .local v33, regex:Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_28

    .line 386
    const/16 v46, 0x1

    sput-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 384
    :cond_28
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 391
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v22           #len$:I
    .end local v30           #o:Ljava/lang/String;
    .end local v33           #regex:Ljava/lang/String;
    .end local v36           #s:Ljava/lang/String;
    :cond_29
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "hasTethered"

    sget-boolean v48, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 392
    const-string v46, "isNSOpening"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    sput-boolean v46, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    .line 395
    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v46, :cond_2c

    .line 397
    const/16 v46, 0x0

    sput-boolean v46, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    .line 398
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSOpening"

    sget-boolean v48, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 401
    const-string v46, "SNS_Notioncation"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    if-nez v46, :cond_2a

    .line 402
    const/16 v46, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    .line 404
    :cond_2a
    new-instance v46, Landroid/content/Intent;

    const-string v47, "com.htc.android.enableIS.UI"

    invoke-direct/range {v46 .. v47}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 415
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

    .line 406
    :cond_2c
    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v46, :cond_2b

    sget-boolean v46, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    if-nez v46, :cond_2b

    .line 408
    invoke-static/range {p1 .. p1}, Lcom/android/settings/SmartNSUtility;->isMLEnabled(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_2d

    .line 409
    new-instance v46, Landroid/content/Intent;

    const-string v47, "com.htc.android.enableIS.UI"

    invoke-direct/range {v46 .. v47}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 411
    :cond_2d
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSClosing"

    sget-boolean v48, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_9

    .line 417
    .end local v6           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #cm:Landroid/net/ConnectivityManager;
    .end local v25           #mUsbRegexs:[Ljava/lang/String;
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_30

    .line 419
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

    .line 421
    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v46, :cond_2f

    sget-boolean v46, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    if-eqz v46, :cond_7

    .line 423
    :cond_2f
    const-string v46, "NetSharing"

    const-string v47, "setNetSharing(0)"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    goto/16 :goto_5

    .line 428
    :cond_30
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_33

    .line 432
    const-string v46, "com.htc.admin.extra.ALLOW_STATUS"

    const/16 v47, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v39

    .line 434
    .local v39, status:I
    if-nez v39, :cond_32

    .line 435
    const/16 v46, 0x0

    sput-boolean v46, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    .line 438
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

    .line 440
    sget-boolean v46, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-nez v46, :cond_7

    .line 442
    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v46, :cond_31

    sget-boolean v46, Lcom/android/settings/NSReceiver;->isNSOpening:Z

    if-eqz v46, :cond_7

    .line 450
    :cond_31
    const/16 v46, 0x0

    :try_start_0
    move/from16 v0, v46

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 453
    :catch_0
    move-exception v15

    .line 455
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 437
    .end local v15           #e:Ljava/lang/Exception;
    :cond_32
    const/16 v46, 0x1

    sput-boolean v46, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    goto :goto_a

    .line 476
    .end local v39           #status:I
    :cond_33
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_37

    .line 477
    const-string v46, "requestMHS"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 480
    .local v34, requestMHS:Z
    sget-boolean v46, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_MHS:Z

    if-eqz v46, :cond_7

    .line 482
    const-string v46, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    .line 485
    .restart local v12       #cm:Landroid/net/ConnectivityManager;
    :try_start_1
    new-instance v19, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;-><init>(Landroid/net/ConnectivityManager;)V

    .line 486
    .local v19, icm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    const/16 v46, -0x22

    const/16 v47, -0x1

    const/16 v48, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    move/from16 v2, v47

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    move-result v24

    .line 487
    .local v24, mMHSstatus:I
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

    .line 489
    if-eqz v34, :cond_35

    if-nez v24, :cond_35

    .line 490
    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v46, :cond_34

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    new-instance v47, Landroid/content/Intent;

    const-string v48, "com.htc.android.startIS"

    invoke-direct/range {v47 .. v48}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v47}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 493
    const-string v46, "SmartNS_NSReceiver"

    const-string v47, "broadcast com.htc.android.startIS"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
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

    .line 506
    .end local v19           #icm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    .end local v24           #mMHSstatus:I
    :catch_1
    move-exception v15

    .line 507
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v46, "SmartNS_NSReceiver"

    const-string v47, "Exception"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-static {v0, v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 498
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v19       #icm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    .restart local v24       #mMHSstatus:I
    :cond_35
    const/16 v46, 0x0

    :try_start_2
    sput-boolean v46, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    .line 499
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSOpening"

    sget-boolean v48, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 500
    if-eqz v34, :cond_36

    .line 501
    new-instance v46, Landroid/content/Intent;

    const-string v47, "com.htc.android.enableIS.UI"

    invoke-direct/range {v46 .. v47}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 502
    :cond_36
    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v46, :cond_34

    const/16 v46, 0x1

    move/from16 v0, v24

    move/from16 v1, v46

    if-ne v0, v1, :cond_34

    .line 503
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    .line 514
    .end local v12           #cm:Landroid/net/ConnectivityManager;
    .end local v19           #icm:Lcom/htc/wrap/android/net/HtcWrapConnectivityManager;
    .end local v24           #mMHSstatus:I
    .end local v34           #requestMHS:Z
    :cond_37
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_38

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-static/range {v46 .. v47}, Lcom/android/settings/SmartNSUtility;->FailISNotification(Landroid/content/Context;Z)V

    .line 517
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "hasTethered"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 518
    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    const-string v47, "isNSOpening"

    const/16 v48, 0x0

    invoke-interface/range {v46 .. v48}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5

    .line 520
    :cond_38
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_39

    .line 521
    const-string v46, "SNS_Notioncation"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 522
    .local v28, notification:Z
    const-string v46, "SNS_Fail_Notioncation"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 524
    .local v27, notificaiton_fail:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->FailISNotification(Landroid/content/Context;Z)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/android/settings/SmartNSUtility;->SetISNotification(Landroid/content/Context;Z)V

    .line 527
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

    .line 528
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

    .line 530
    .end local v27           #notificaiton_fail:Z
    .end local v28           #notification:Z
    :cond_39
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v46

    const-string v47, "com.htc.net.checkNetwork"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_7

    .line 532
    const-string v46, "WarningUI"

    const/16 v47, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 534
    .local v45, warningUI:Z
    sget-boolean v46, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v46, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/settings/SmartNSUtility;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v46

    if-nez v46, :cond_7

    if-nez v45, :cond_7

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NSReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/settings/NSReceiver;->popUpWaringDialog(Landroid/content/Context;)V

    goto/16 :goto_5
.end method
