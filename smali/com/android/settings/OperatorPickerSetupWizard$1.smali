.class Lcom/android/settings/OperatorPickerSetupWizard$1;
.super Landroid/os/Handler;
.source "OperatorPickerSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OperatorPickerSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OperatorPickerSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/OperatorPickerSetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/OperatorPickerSetupWizard$1;->this$0:Lcom/android/settings/OperatorPickerSetupWizard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/OperatorPickerSetupWizard$1;->this$0:Lcom/android/settings/OperatorPickerSetupWizard;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/OperatorPickerSetupWizard;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/settings/OperatorPickerSetupWizard;->access$002(Lcom/android/settings/OperatorPickerSetupWizard;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch
.end method
