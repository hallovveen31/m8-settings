.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$1;
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

.field final synthetic val$dialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;Lcom/htc/app/HtcProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$1;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iput-object p2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$1;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$1;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$1;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v1, v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$1;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v1, v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2$1;->this$1:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;

    iget-object v1, v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage$2;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryption3LMPage;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
