.class Lcom/android/settings/ChargerStatusDialog$5;
.super Landroid/content/BroadcastReceiver;
.source "ChargerStatusDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChargerStatusDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChargerStatusDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/ChargerStatusDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChargerStatusDialog$5;->this$0:Lcom/android/settings/ChargerStatusDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.htc.intent.action.BATTERY_CHANGE_NOTIFICATION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "plugged"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v4, "ChargerStatusDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", plugged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/ChargerStatusDialog$5;->this$0:Lcom/android/settings/ChargerStatusDialog;

    #getter for: Lcom/android/settings/ChargerStatusDialog;->type:I
    invoke-static {v4}, Lcom/android/settings/ChargerStatusDialog;->access$200(Lcom/android/settings/ChargerStatusDialog;)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/ChargerStatusDialog$5;->this$0:Lcom/android/settings/ChargerStatusDialog;

    #getter for: Lcom/android/settings/ChargerStatusDialog;->mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;
    invoke-static {v4}, Lcom/android/settings/ChargerStatusDialog;->access$300(Lcom/android/settings/ChargerStatusDialog;)Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    iget-object v4, p0, Lcom/android/settings/ChargerStatusDialog$5;->this$0:Lcom/android/settings/ChargerStatusDialog;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "com.htc.intent.action.BATTERY_CHANGE_PARTIAL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "unsupport_charger"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/settings/ChargerStatusDialog$5;->this$0:Lcom/android/settings/ChargerStatusDialog;

    #getter for: Lcom/android/settings/ChargerStatusDialog;->type:I
    invoke-static {v4}, Lcom/android/settings/ChargerStatusDialog;->access$200(Lcom/android/settings/ChargerStatusDialog;)I

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/ChargerStatusDialog$5;->this$0:Lcom/android/settings/ChargerStatusDialog;

    #getter for: Lcom/android/settings/ChargerStatusDialog;->mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;
    invoke-static {v4}, Lcom/android/settings/ChargerStatusDialog;->access$300(Lcom/android/settings/ChargerStatusDialog;)Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    iget-object v4, p0, Lcom/android/settings/ChargerStatusDialog$5;->this$0:Lcom/android/settings/ChargerStatusDialog;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const-string v4, "com.htc.charger.dont.care"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/ChargerStatusDialog$5;->this$0:Lcom/android/settings/ChargerStatusDialog;

    #getter for: Lcom/android/settings/ChargerStatusDialog;->mDialog:Lcom/android/settings/ChargerStatusDialog$WarningDialog;
    invoke-static {v4}, Lcom/android/settings/ChargerStatusDialog;->access$300(Lcom/android/settings/ChargerStatusDialog;)Lcom/android/settings/ChargerStatusDialog$WarningDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    iget-object v4, p0, Lcom/android/settings/ChargerStatusDialog$5;->this$0:Lcom/android/settings/ChargerStatusDialog;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
