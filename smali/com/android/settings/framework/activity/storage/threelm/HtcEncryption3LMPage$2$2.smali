.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;
.super Ljava/lang/Object;
.source "HtcEncryption3LMPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iput-object p2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->isPhoneStorageFuse()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v2, v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sd_encryption"

    invoke-static {v2, v3, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v2, v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sd_encryption"

    invoke-static {v2, v3, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v2, v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/os/HtcStorageManager;->unmountSdCardVolume(Landroid/content/Context;)Z

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v2, v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/os/HtcStorageManager;->formatSdCardVolume(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v2, v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/os/HtcStorageManager;->formatInternalSdCardVolume(Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v2, v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "encryption_ui_enabled"

    iget-object v4, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v4, v4, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v4}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "encryption_ui_enabled"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v2, v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_encryption"

    invoke-static {v2, v3, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v2, v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_encryption"

    invoke-static {v2, v3, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$2;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v2, v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void
.end method
