.class Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$2;
.super Ljava/lang/Object;
.source "HtcMasterClearBackupProgressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->getBackupProgressDialog(Landroid/content/Context;)Lcom/htc/app/HtcProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$2;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;

    iput-object p2, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$2;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;

    iget-object v1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->doBackupInBackground(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->access$100(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;Landroid/content/Context;)V

    return-void
.end method
