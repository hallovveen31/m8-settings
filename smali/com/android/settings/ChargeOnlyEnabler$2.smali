.class Lcom/android/settings/ChargeOnlyEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "ChargeOnlyEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChargeOnlyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChargeOnlyEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ChargeOnlyEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings/ChargeOnlyEnabler$2;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 189
    if-eqz p2, :cond_0

    .line 191
    const-string v1, "SmartNS_ChargeOnly_Enabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on Receive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.settings.action.CHARGE_ONLY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "enabled"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 197
    .local v0, enabled:Z
    if-eqz v0, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler$2;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    #getter for: Lcom/android/settings/ChargeOnlyEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/ChargeOnlyEnabler;->access$200(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    invoke-static {p1}, Lcom/android/settings/ChargeOnlyEnabler;->isCharging(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler$2;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    #getter for: Lcom/android/settings/ChargeOnlyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/ChargeOnlyEnabler;->access$000(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ChargeOnlyEnabler;->addNotification(Landroid/content/Context;)V

    .line 213
    .end local v0           #enabled:Z
    :cond_0
    :goto_0
    return-void

    .line 205
    .restart local v0       #enabled:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChargeOnlyEnabler$2;->this$0:Lcom/android/settings/ChargeOnlyEnabler;

    #getter for: Lcom/android/settings/ChargeOnlyEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/ChargeOnlyEnabler;->access$200(Lcom/android/settings/ChargeOnlyEnabler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
