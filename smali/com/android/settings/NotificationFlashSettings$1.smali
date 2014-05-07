.class Lcom/android/settings/NotificationFlashSettings$1;
.super Landroid/os/Handler;
.source "NotificationFlashSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationFlashSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationFlashSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationFlashSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 494
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 496
    .local v0, color:I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 534
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    iget-object v2, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v2}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/settings/NotificationFlashSettings;->refreshUi(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/android/settings/NotificationFlashSettings;->access$000(Lcom/android/settings/NotificationFlashSettings;Landroid/content/Context;)V

    .line 535
    return-void

    .line 498
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v3}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ne v0, v4, :cond_1

    :goto_1
    invoke-static {v3, v1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setMissCall(Landroid/content/Context;Z)V

    .line 499
    if-eq v0, v4, :cond_0

    .line 500
    iget-object v1, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v1}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setMissCallColor(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 498
    goto :goto_1

    .line 504
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v3}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ne v0, v4, :cond_2

    :goto_2
    invoke-static {v3, v1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setSms(Landroid/content/Context;Z)V

    .line 505
    if-eq v0, v4, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v1}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setSmsColor(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 504
    goto :goto_2

    .line 510
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v3}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ne v0, v4, :cond_3

    :goto_3
    invoke-static {v3, v1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setEmail(Landroid/content/Context;Z)V

    .line 511
    if-eq v0, v4, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v1}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setEmailColor(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 510
    goto :goto_3

    .line 516
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v3}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ne v0, v4, :cond_4

    :goto_4
    invoke-static {v3, v1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setVoiceMail(Landroid/content/Context;Z)V

    .line 517
    if-eq v0, v4, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v1}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setVoiceMailColor(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 516
    goto :goto_4

    .line 522
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v3}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ne v0, v4, :cond_5

    :goto_5
    invoke-static {v3, v1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setReminder(Landroid/content/Context;Z)V

    .line 523
    if-eq v0, v4, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v1}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setReminderColor(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 522
    goto :goto_5

    .line 528
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v3}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    if-ne v0, v4, :cond_6

    :goto_6
    invoke-static {v3, v1}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setAlarm(Landroid/content/Context;Z)V

    .line 529
    if-eq v0, v4, :cond_0

    .line 530
    iget-object v1, p0, Lcom/android/settings/NotificationFlashSettings$1;->this$0:Lcom/android/settings/NotificationFlashSettings;

    invoke-virtual {v1}, Lcom/android/settings/NotificationFlashSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->setAlarmColor(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 528
    goto :goto_6

    .line 496
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
