.class Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;
.super Ljava/lang/Object;
.source "VzwStorageBackupAssistant.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;->this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 158
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;->this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;
    invoke-static {v2, v3}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->access$002(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 161
    :try_start_0
    invoke-static {}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const-string v2, "onServiceConnected"

    #calls: Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->access$200(Ljava/lang/String;)V

    .line 166
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 168
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;->this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    #getter for: Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mMessenger:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->access$300(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 169
    iget-object v2, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;->this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    #getter for: Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->access$000(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VMMSettingService"

    const-string v3, "onServiceConnected fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 177
    invoke-static {}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "onServiceDisconnected"

    #calls: Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->access$200(Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant$2;->this$0:Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->mService:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;->access$002(Lcom/android/settings/framework/preference/storage/vzw/VzwStorageBackupAssistant;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 181
    return-void
.end method
