.class Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener$1;
.super Ljava/lang/Object;
.source "LocalePickerSetupWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener$1;->this$1:Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener$1;->this$1:Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;

    iget-object v0, v0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    #getter for: Lcom/android/settings/LocalePickerSetupWizard;->mLocalePicker:Lcom/android/settings/LocalePickerSetupWizardFragment;
    invoke-static {v0}, Lcom/android/settings/LocalePickerSetupWizard;->access$400(Lcom/android/settings/LocalePickerSetupWizard;)Lcom/android/settings/LocalePickerSetupWizardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/LocalePickerSetupWizardFragment;->updateLocale()V

    .line 320
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener$1;->this$1:Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;

    iget-object v0, v0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    #getter for: Lcom/android/settings/LocalePickerSetupWizard;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/LocalePickerSetupWizard;->access$800(Lcom/android/settings/LocalePickerSetupWizard;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 321
    return-void
.end method
