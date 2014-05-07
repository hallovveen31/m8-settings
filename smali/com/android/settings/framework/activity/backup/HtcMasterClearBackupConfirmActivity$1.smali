.class Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$1;
.super Ljava/lang/Object;
.source "HtcMasterClearBackupConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$1;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 76
    invoke-static {}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "[Backup][Confirm][Positive-button][Backup now] onClick():"

    #calls: Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->access$100(Ljava/lang/String;)V

    .line 80
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$1;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$1;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;

    invoke-virtual {v1}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$1;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    return-void
.end method
