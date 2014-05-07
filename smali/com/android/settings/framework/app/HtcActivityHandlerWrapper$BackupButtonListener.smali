.class Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;
.super Ljava/lang/Object;
.source "HtcActivityHandlerWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupButtonListener"
.end annotation


# instance fields
.field private mArguments:Landroid/os/Bundle;

.field private mExtra:Landroid/os/Bundle;

.field private mFragment:Landroid/app/Fragment;

.field private mParentFragmentName:Ljava/lang/String;

.field private mParentFragmentTitleResId:I

.field private mParentIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/app/Fragment;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mFragment:Landroid/app/Fragment;

    iput-object p2, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mParentFragmentName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mParentIntent:Landroid/content/Intent;

    iput p4, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mParentFragmentTitleResId:I

    iput-object p5, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mExtra:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mArguments:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    iget-object v6, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mArguments:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string v6, "extra_caller"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extra caller:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v4, :cond_1

    const-string v6, "activity"

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "baseActivity:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->access$000()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "caller:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", parentFragmentName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mParentFragmentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mParentFragmentName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void

    :cond_3
    if-eqz v4, :cond_5

    const-class v6, Lcom/android/settings/Settings;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-class v6, Lcom/android/settings/SubSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    iget-object v6, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mParentIntent:Landroid/content/Intent;

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->access$000()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "launch parent with intent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mParentIntent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v6, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mParentIntent:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->access$000()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "launch parent with fragment:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mParentFragmentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v6, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mFragment:Landroid/app/Fragment;

    iget-object v7, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mParentFragmentName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mExtra:Landroid/os/Bundle;

    iget v9, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;->mParentFragmentTitleResId:I

    #calls: Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->startFragment(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;I)Z
    invoke-static {v6, v7, v8, v9}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->access$200(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;I)Z

    goto/16 :goto_0
.end method
