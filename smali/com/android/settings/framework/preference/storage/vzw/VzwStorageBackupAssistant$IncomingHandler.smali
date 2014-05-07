.class Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;
.super Landroid/os/Handler;
.source "VzwStorageBackupAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;->this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_GET_SUBSCRIPTION_INFO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->access$200(Ljava/lang/String;)V

    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    const v1, 0x7f0c02d5

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.vmm.APIFacade"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "source"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;->this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    #getter for: Lcom/android/settings/framework/preference/HtcAbsActionPreference;->mMessageDispatcher:Lcom/android/settings/framework/os/HtcMessageDispatcher;
    invoke-static {v2}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->access$400(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)Lcom/android/settings/framework/os/HtcMessageDispatcher;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;->this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/framework/os/HtcMessageDispatcher;->setTitleInForeground(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$IncomingHandler;->this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0c02d6

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.vmm.settings.GeneralSetting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
