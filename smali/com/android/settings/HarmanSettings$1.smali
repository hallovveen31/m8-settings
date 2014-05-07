.class Lcom/android/settings/HarmanSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "HarmanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HarmanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HarmanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/HarmanSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/settings/HarmanSettings$1;->this$0:Lcom/android/settings/HarmanSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 494
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/HarmanSettings;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive(): action=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->access$100(Ljava/lang/String;)V

    .line 503
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->access$602(I)I

    .line 507
    :cond_1
    const-string v2, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->access$702(Z)Z

    .line 511
    :cond_2
    const-string v2, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 512
    invoke-static {v4}, Lcom/android/settings/HarmanSettings;->access$702(Z)Z

    .line 515
    :cond_3
    const-string v2, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 516
    invoke-static {v4}, Lcom/android/settings/HarmanSettings;->access$702(Z)Z

    .line 518
    const-string v2, "state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 519
    .local v1, hdmiState:I
    invoke-static {}, Lcom/android/settings/HarmanSettings;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hdmiState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/HarmanSettings;->logV(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->access$100(Ljava/lang/String;)V

    .line 523
    :cond_4
    if-ne v1, v5, :cond_5

    .line 524
    invoke-static {v5}, Lcom/android/settings/HarmanSettings;->access$702(Z)Z

    .line 528
    .end local v1           #hdmiState:I
    :cond_5
    iget-object v2, p0, Lcom/android/settings/HarmanSettings$1;->this$0:Lcom/android/settings/HarmanSettings;

    #calls: Lcom/android/settings/HarmanSettings;->syncLiveStageState()V
    invoke-static {v2}, Lcom/android/settings/HarmanSettings;->access$400(Lcom/android/settings/HarmanSettings;)V

    .line 529
    return-void
.end method
