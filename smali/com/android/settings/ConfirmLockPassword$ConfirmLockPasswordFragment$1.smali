.class Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/htc/widget/ActionBarText;

    move-result-object v0

    const v1, 0x7f0c0f20

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    return-void
.end method
