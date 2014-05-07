.class Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$2;
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

    iput-object p1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$2;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[Backup][Confirm][Negative-button][No thanks] onClick():"

    #calls: Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->access$100(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity$2;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;

    #calls: Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->showResetConfirmDialog()V
    invoke-static {v0}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;->access$200(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupConfirmActivity;)V

    return-void
.end method
