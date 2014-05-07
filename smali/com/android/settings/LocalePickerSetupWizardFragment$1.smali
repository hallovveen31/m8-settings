.class Lcom/android/settings/LocalePickerSetupWizardFragment$1;
.super Ljava/lang/Object;
.source "LocalePickerSetupWizardFragment.java"

# interfaces
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LocalePickerSetupWizardFragment;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocalePickerSetupWizardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/LocalePickerSetupWizardFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$1;->this$0:Lcom/android/settings/LocalePickerSetupWizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizardFragment$1;->this$0:Lcom/android/settings/LocalePickerSetupWizardFragment;

    #setter for: Lcom/android/settings/LocalePickerSetupWizardFragment;->mSelectLocale:Ljava/util/Locale;
    invoke-static {v0, p1}, Lcom/android/settings/LocalePickerSetupWizardFragment;->access$002(Lcom/android/settings/LocalePickerSetupWizardFragment;Ljava/util/Locale;)Ljava/util/Locale;

    .line 69
    const-string v0, "OOBE_LocalePickerSetupWizardFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocaleSelectionListener : mySelectlocale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method
