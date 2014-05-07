.class Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "HtcMasterClearBackupProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$4;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 208
    invoke-static {}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->access$300(Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$4;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;

    #calls: Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->cancelBackupProgressDialog()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->access$400(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;)V

    .line 212
    return-void
.end method
