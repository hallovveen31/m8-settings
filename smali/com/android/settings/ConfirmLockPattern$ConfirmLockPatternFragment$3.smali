.class Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$302(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I

    .line 363
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    #calls: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 364
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    const/4 v6, 0x0

    .line 354
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$700(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/htc/widget/ActionBarText;

    move-result-object v1

    const v2, 0x7f0c0f44

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarText;->setSecondaryText(I)V

    .line 355
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mActionBarText:Lcom/htc/widget/ActionBarText;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$700(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/htc/widget/ActionBarText;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 356
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 357
    .local v0, secondsCountdown:I
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->access$800(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const v3, 0x7f0c0f45

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    return-void
.end method
