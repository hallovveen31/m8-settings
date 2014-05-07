.class Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear$1;
.super Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;
.source "HtcAbsMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;

    invoke-direct {p0, p2}, Lcom/android/settings/framework/core/backup/boomerang/HtcBoomerangAgent$OnBackupStateChangeListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBackupStateChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackupStateChange(): \n - uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n - mOkButton: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;

    #getter for: Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mOkButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->access$100(Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->access$200(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;

    #getter for: Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mOkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->access$100(Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear$1;->this$0:Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;

    #getter for: Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->mOkButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->access$100(Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/storage/HtcAbsMasterClear;->applyBoomerangPolicyForOkButton(Landroid/widget/Button;)V

    :cond_1
    return-void
.end method
