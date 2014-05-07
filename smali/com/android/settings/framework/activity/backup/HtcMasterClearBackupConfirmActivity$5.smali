.class Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$5;
.super Ljava/lang/Object;
.source "HtcMasterClearBackupConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 147
    iput-object p1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$5;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 151
    invoke-static {}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "[Reset][Confirm][Cancel] triggered by pressing the back key"

    #calls: Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->access$100(Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$5;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->finish()V

    .line 156
    return-void
.end method
