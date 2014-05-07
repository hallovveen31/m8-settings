.class Lcom/android/settings/SmartNSEnabler$3;
.super Landroid/content/BroadcastReceiver;
.source "SmartNSEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmartNSEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartNSEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartNSEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 490
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "sns_type"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 491
    .local v7, type:I
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$602(I)I

    .line 492
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v8

    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$802(Z)Z

    .line 493
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "ps_enabled"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$902(Z)Z

    .line 494
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "ipt_connectpass"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1002(Z)Z

    .line 495
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "isNSOpening"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    .line 496
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "isMLinkOpening"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/settings/SmartNSEnabler;->isMLinkOpening:Z

    .line 497
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "requestMHS"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/settings/SmartNSEnabler;->requestMHS:Z

    .line 499
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "isICMOpening"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/settings/SmartNSEnabler;->isICMOpening:Z

    .line 501
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "hasTethered"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/settings/SmartNSEnabler;->hasTethered:Z

    .line 502
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "smart_pcsc"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1102(Z)Z

    .line 504
    const-string v8, "SmartNS_Enabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " typeArray:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$600()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 508
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$000(Lcom/android/settings/SmartNSEnabler;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 509
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$000(Lcom/android/settings/SmartNSEnabler;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 511
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.ats.usbui.DISABLE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 513
    const-string v8, "UIDisable"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 515
    .local v5, runATS:Z
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "runATS"

    invoke-interface {v8, v9, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 516
    const-string v8, "SmartNS_Enabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Run ATS:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-eqz v5, :cond_9

    .line 519
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    .end local v5           #runATS:Z
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.admin.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 526
    const-string v8, "com.htc.admin.extra.ALLOW_STATUS"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 528
    .local v6, status:I
    if-nez v6, :cond_a

    .line 529
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    .line 533
    :goto_1
    const-string v8, "SmartNS_Enabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EAS Allow IS:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    sget-boolean v8, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v8, :cond_2

    sget-boolean v8, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-nez v8, :cond_2

    .line 537
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 541
    .end local v6           #status:I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.mdm.usb.intent.MDM_USB_ALLOW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.mdm.usb.intent.MDM_TETHERING_ALLOW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 543
    :cond_3
    const/4 v1, 0x1

    .line 544
    .local v1, USB_allow:Z
    const/4 v0, 0x1

    .line 546
    .local v0, Tethering_allow:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.mdm.usb.intent.MDM_USB_ALLOW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 547
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "allowed"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 548
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "mdm_usb"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 549
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "mdm_Tethering"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 557
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    if-nez v0, :cond_c

    .line 558
    :cond_5
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x13

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    .end local v0           #Tethering_allow:Z
    .end local v1           #USB_allow:Z
    :cond_6
    :goto_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.settings.action.CHARGE_ONLY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 566
    const-string v8, "enabled"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 567
    .local v2, enabled:Z
    if-eqz v2, :cond_7

    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$600()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 568
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 571
    .end local v2           #enabled:Z
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.USB_HTC_CARMODE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 572
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/HtcFeatureList;->hasMirrorLink(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 831
    :cond_8
    :goto_4
    return-void

    .line 521
    .restart local v5       #runATS:Z
    :cond_9
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 531
    .end local v5           #runATS:Z
    .restart local v6       #status:I
    :cond_a
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    goto/16 :goto_1

    .line 551
    .end local v6           #status:I
    .restart local v0       #Tethering_allow:Z
    .restart local v1       #USB_allow:Z
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.mdm.usb.intent.MDM_TETHERING_ALLOW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 552
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "allowed"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 553
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "mdm_Tethering"

    invoke-interface {v8, v9, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 554
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "mdm_usb"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto/16 :goto_2

    .line 560
    :cond_c
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x14

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 575
    .end local v0           #Tethering_allow:Z
    .end local v1           #USB_allow:Z
    :cond_d
    const-string v8, "connected"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 576
    .local v3, isConnected:Z
    const-string v8, "SmartNS_Enabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Car PC connected:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    if-eqz v3, :cond_e

    .line 578
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 581
    .end local v3           #isConnected:Z
    :cond_e
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$600()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_17

    .line 583
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 585
    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$800()Z

    move-result v8

    if-nez v8, :cond_10

    .line 587
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "ps_enabled"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "isNSOpening"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "hasTethered"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 591
    :cond_f
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "sns_closing"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 592
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 814
    :cond_10
    :goto_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 815
    sget-boolean v8, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-nez v8, :cond_11

    .line 816
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 819
    :cond_11
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "mdm_Tethering"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 820
    .restart local v0       #Tethering_allow:Z
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "mdm_usb"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 822
    .restart local v1       #USB_allow:Z
    if-eqz v0, :cond_12

    if-nez v1, :cond_13

    .line 823
    :cond_12
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x13

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 825
    :cond_13
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mApnDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1300(Lcom/android/settings/SmartNSEnabler;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$800()Z

    move-result v8

    if-nez v8, :cond_8

    .line 826
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mApnDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1300(Lcom/android/settings/SmartNSEnabler;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    goto/16 :goto_4

    .line 594
    .end local v0           #Tethering_allow:Z
    .end local v1           #USB_allow:Z
    :cond_14
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 599
    :cond_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.smartPCSC.complete"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.ipt.enabled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.ipt.disabled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.enableIS.UI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.enableICM.UI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.enableIS.UI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.enableMLINK.UI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 608
    :cond_16
    sget-boolean v8, Lcom/android/settings/SmartNSEnabler;->requestMHS:Z

    if-nez v8, :cond_8

    .line 611
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "sns_closing"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 612
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 617
    :cond_17
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$600()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_21

    .line 620
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 622
    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$800()Z

    move-result v8

    if-nez v8, :cond_10

    .line 624
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "ps_enabled"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "isNSOpening"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "hasTethered"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 628
    :cond_18
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "sns_closing"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 629
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 631
    :cond_19
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 635
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.smartPCSC.complete"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.ipt.enabled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.ipt.disabled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 640
    :cond_1b
    sget-boolean v8, Lcom/android/settings/SmartNSEnabler;->requestMHS:Z

    if-nez v8, :cond_8

    .line 643
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "sns_closing"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 644
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 646
    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.smartPCSC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 649
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v8

    if-eqz v8, :cond_1d

    sget-boolean v8, Lcom/android/settings/PSService;->runSmartPCSC:Z

    if-eqz v8, :cond_1d

    .line 650
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 652
    :cond_1d
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 655
    :cond_1e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.openingIS.UI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.enableIS.UI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 657
    :cond_1f
    sget-boolean v8, Lcom/android/settings/SmartNSEnabler;->requestMHS:Z

    if-nez v8, :cond_8

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$1100()Z

    move-result v8

    if-nez v8, :cond_8

    .line 659
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 662
    :cond_20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.startIS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 664
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 668
    :cond_21
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$600()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_27

    .line 671
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 673
    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$800()Z

    move-result v8

    if-nez v8, :cond_10

    .line 675
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "ps_enabled"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 676
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 678
    :cond_22
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 682
    :cond_23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.ipt.enabled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 684
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    const-string v8, "SmartNS_Enabler"

    const-string v9, "Received IPTPass from PSService"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 687
    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.ipt.disabled"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 688
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 689
    const-string v8, "SmartNS_Enabler"

    const-string v9, "Received IPTDisabled from PSService"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 691
    :cond_25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.opening_IPT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 693
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$900()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_26

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$1000()Z

    move-result v8

    if-nez v8, :cond_26

    .line 694
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 696
    :cond_26
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 700
    :cond_27
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$600()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2e

    .line 703
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 705
    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$800()Z

    move-result v8

    if-nez v8, :cond_10

    .line 707
    sget-boolean v8, Lcom/android/settings/SmartNSEnabler;->hasTethered:Z

    if-nez v8, :cond_28

    sget-boolean v8, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    if-eqz v8, :cond_29

    .line 708
    :cond_28
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 710
    :cond_29
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 750
    :cond_2a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.openingIS.UI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 752
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v8

    if-eqz v8, :cond_2c

    sget-boolean v8, Lcom/android/settings/SmartNSEnabler;->isNSOpening:Z

    if-nez v8, :cond_2b

    sget-boolean v8, Lcom/android/settings/SmartNSEnabler;->requestMHS:Z

    if-eqz v8, :cond_2c

    .line 753
    :cond_2b
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 755
    :cond_2c
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 758
    :cond_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.enableIS.UI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 760
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 763
    :cond_2e
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$600()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_31

    .line 765
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 767
    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$800()Z

    move-result v8

    if-nez v8, :cond_10

    .line 769
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 774
    :cond_2f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.enableICM.UI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 775
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 777
    :cond_30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.openingICM.UI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 778
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 782
    :cond_31
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mTypeArray:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$700(Lcom/android/settings/SmartNSEnabler;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$600()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_10

    .line 785
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 787
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "sns_pre_type"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 789
    .local v4, preType:I
    invoke-static {}, Lcom/android/settings/SmartNSEnabler;->access$800()Z

    move-result v8

    if-nez v8, :cond_10

    .line 791
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "sns_position"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 792
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "sns_type"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 794
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$400(Lcom/android/settings/SmartNSEnabler;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/settings/SmartNSUtility;->enableNCM(Landroid/content/Context;Z)V

    .line 796
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->sp:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$200(Lcom/android/settings/SmartNSEnabler;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "mlink_enabled"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 798
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 801
    .end local v4           #preType:I
    :cond_32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.openingMLINK.UI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 803
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->isUsbConnected()Z

    move-result v8

    if-eqz v8, :cond_33

    sget-boolean v8, Lcom/android/settings/SmartNSEnabler;->isMLinkOpening:Z

    if-eqz v8, :cond_33

    .line 804
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 806
    :cond_33
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 809
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.android.enableMLINK.UI"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 811
    iget-object v8, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/SmartNSEnabler$3;->this$0:Lcom/android/settings/SmartNSEnabler;

    #getter for: Lcom/android/settings/SmartNSEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/settings/SmartNSEnabler;->access$1200(Lcom/android/settings/SmartNSEnabler;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5
.end method
