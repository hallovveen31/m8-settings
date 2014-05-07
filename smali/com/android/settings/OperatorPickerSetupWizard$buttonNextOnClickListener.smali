.class Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;
.super Ljava/lang/Object;
.source "OperatorPickerSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OperatorPickerSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "buttonNextOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OperatorPickerSetupWizard;


# direct methods
.method private constructor <init>(Lcom/android/settings/OperatorPickerSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/OperatorPickerSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/OperatorPickerSetupWizard;Lcom/android/settings/OperatorPickerSetupWizard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;-><init>(Lcom/android/settings/OperatorPickerSetupWizard;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/OperatorPickerSetupWizard;

    #getter for: Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z
    invoke-static {v0}, Lcom/android/settings/OperatorPickerSetupWizard;->access$000(Lcom/android/settings/OperatorPickerSetupWizard;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const-string v0, "OOBE_OperatorPickerSetupWizard"

    const-string v1, " BtnNext clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/OperatorPickerSetupWizard;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/OperatorPickerSetupWizard;->setResult(I)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/OperatorPickerSetupWizard;

    invoke-virtual {v0}, Lcom/android/settings/OperatorPickerSetupWizard;->finish()V

    .line 394
    :cond_0
    return-void
.end method
