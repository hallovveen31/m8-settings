.class Lcom/android/settings/accounts/AccountSyncSettings$2;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSyncSettings;->removeAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #setter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveFalse:Z
    invoke-static {v2, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->access$202(Lcom/android/settings/accounts/AccountSyncSettings;Z)Z

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    const/4 v3, 0x0

    #setter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveFalse:Z
    invoke-static {v2, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->access$202(Lcom/android/settings/accounts/AccountSyncSettings;Z)Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/accounts/AccountSyncSettings;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get call back result from AccountManagerCallback : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveFalse:Z
    invoke-static {v4}, Lcom/android/settings/accounts/AccountSyncSettings;->access$200(Lcom/android/settings/accounts/AccountSyncSettings;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveFalse:Z
    invoke-static {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->access$200(Lcom/android/settings/accounts/AccountSyncSettings;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->showDialog(I)V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    #getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mRemoveProgress:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$2;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Lcom/android/settings/accounts/HtcSettingsPreferenceFragment;->finish()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/settings/accounts/AccountSyncSettings;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch error message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/android/settings/accounts/AccountSyncSettings;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch error message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v2

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto/16 :goto_0
.end method
