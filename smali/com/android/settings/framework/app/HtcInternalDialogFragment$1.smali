.class Lcom/android/settings/framework/app/HtcInternalDialogFragment$1;
.super Ljava/lang/Object;
.source "HtcInternalDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcInternalDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/app/HtcInternalDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/app/HtcInternalDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment$1;->this$0:Lcom/android/settings/framework/app/HtcInternalDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment$1;->this$0:Lcom/android/settings/framework/app/HtcInternalDialogFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment$1;->this$0:Lcom/android/settings/framework/app/HtcInternalDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->onPositiveButtonClick()V

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment$1;->this$0:Lcom/android/settings/framework/app/HtcInternalDialogFragment;

    #getter for: Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mExtraPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->access$100(Lcom/android/settings/framework/app/HtcInternalDialogFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcInternalDialogFragment$1;->this$0:Lcom/android/settings/framework/app/HtcInternalDialogFragment;

    #getter for: Lcom/android/settings/framework/app/HtcInternalDialogFragment;->mExtraPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/android/settings/framework/app/HtcInternalDialogFragment;->access$100(Lcom/android/settings/framework/app/HtcInternalDialogFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void
.end method
