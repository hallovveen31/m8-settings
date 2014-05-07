.class Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$1;
.super Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;
.source "HtcMasterClearBackupProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$1;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;

    iput-object p3, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBackupStateChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$1;->this$0:Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;

    iget-object v1, p0, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->onBackupStateChange(Landroid/content/Context;ZLandroid/net/Uri;)V
    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;->access$000(Lcom/android/settings/framework/activity/backup/HtcMasterClearBackupProgressActivity;Landroid/content/Context;ZLandroid/net/Uri;)V

    .line 73
    return-void
.end method
