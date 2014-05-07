.class Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "CdmaApnGroupSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CdmaApnGroupSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CdmaApnGroupSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/CdmaApnGroupSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CdmaApnGroupSettings;Lcom/android/settings/CdmaApnGroupSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 887
    invoke-direct {p0, p1}, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/CdmaApnGroupSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 890
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 892
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    #calls: Lcom/android/settings/CdmaApnGroupSettings;->fillList()V
    invoke-static {v2}, Lcom/android/settings/CdmaApnGroupSettings;->access$200(Lcom/android/settings/CdmaApnGroupSettings;)V

    .line 894
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/CdmaApnGroupSettings;->access$102(Z)Z

    .line 897
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/settings/CdmaApnGroupSettings;->removeDialog(I)V

    .line 898
    invoke-static {}, Lcom/android/settings/CdmaApnGroupSettings;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CdmaApnGroupSettings"

    const-string v3, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 903
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    iget-object v3, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    invoke-virtual {v3}, Lcom/android/settings/CdmaApnGroupSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0eb9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 908
    iget-object v2, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    #getter for: Lcom/android/settings/CdmaApnGroupSettings;->mIsMVNO:Z
    invoke-static {v2}, Lcom/android/settings/CdmaApnGroupSettings;->access$500(Lcom/android/settings/CdmaApnGroupSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 909
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    const-class v3, Lcom/android/settings/CdmaApnGroupSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 911
    .local v1, intent:Landroid/content/Intent;
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings/CdmaApnGroupSettings;->startActivity(Landroid/content/Intent;)V

    .line 912
    iget-object v2, p0, Lcom/android/settings/CdmaApnGroupSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/CdmaApnGroupSettings;

    invoke-virtual {v2}, Lcom/android/settings/CdmaApnGroupSettings;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 913
    :catch_0
    move-exception v2

    goto :goto_0

    .line 899
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 900
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CdmaApnGroupSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeDialog(DIALOG_RESTORE_DEFAULTAPN).complete.error:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_2

    const-string v2, "no error message"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
