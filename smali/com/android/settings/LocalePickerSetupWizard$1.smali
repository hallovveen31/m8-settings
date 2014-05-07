.class Lcom/android/settings/LocalePickerSetupWizard$1;
.super Landroid/os/Handler;
.source "LocalePickerSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocalePickerSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocalePickerSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/LocalePickerSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizard$1;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 270
    const-string v0, "OOBE_LocalePickerSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 281
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "never should happen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return-void

    .line 273
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard$1;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePickerSetupWizard;->removeDialog(I)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard$1;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/LocalePickerSetupWizard;->setResult(I)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard$1;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    invoke-virtual {v0}, Lcom/android/settings/LocalePickerSetupWizard;->finish()V

    .line 277
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard$1;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    #calls: Lcom/android/settings/LocalePickerSetupWizard;->startLocaleChangeService()V
    invoke-static {v0}, Lcom/android/settings/LocalePickerSetupWizard;->access$300(Lcom/android/settings/LocalePickerSetupWizard;)V

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
