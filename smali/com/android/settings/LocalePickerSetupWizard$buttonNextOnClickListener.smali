.class Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;
.super Ljava/lang/Object;
.source "LocalePickerSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocalePickerSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "buttonNextOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocalePickerSetupWizard;


# direct methods
.method private constructor <init>(Lcom/android/settings/LocalePickerSetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/LocalePickerSetupWizard;Lcom/android/settings/LocalePickerSetupWizard$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;-><init>(Lcom/android/settings/LocalePickerSetupWizard;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const-string v5, "OOBE_LocalePickerSetupWizard"

    const-string v6, " BtnNext clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    #getter for: Lcom/android/settings/LocalePickerSetupWizard;->mLocalePicker:Lcom/android/settings/LocalePickerSetupWizardFragment;
    invoke-static {v5}, Lcom/android/settings/LocalePickerSetupWizard;->access$400(Lcom/android/settings/LocalePickerSetupWizard;)Lcom/android/settings/LocalePickerSetupWizardFragment;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "OOBE_LocalePickerSetupWizard"

    const-string v6, "mLocalePicker == null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setResult(I)V

    iget-object v5, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    iget-object v5, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    #calls: Lcom/android/settings/LocalePickerSetupWizard;->startLocaleChangeService()V
    invoke-static {v5}, Lcom/android/settings/LocalePickerSetupWizard;->access$300(Lcom/android/settings/LocalePickerSetupWizard;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    iget-object v6, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    #getter for: Lcom/android/settings/LocalePickerSetupWizard;->mLocalePicker:Lcom/android/settings/LocalePickerSetupWizardFragment;
    invoke-static {v6}, Lcom/android/settings/LocalePickerSetupWizard;->access$400(Lcom/android/settings/LocalePickerSetupWizard;)Lcom/android/settings/LocalePickerSetupWizardFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/LocalePickerSetupWizardFragment;->getSelectedLocale()Ljava/util/Locale;

    move-result-object v6

    #setter for: Lcom/android/settings/LocalePickerSetupWizard;->mSelectedLocale:Ljava/util/Locale;
    invoke-static {v5, v6}, Lcom/android/settings/LocalePickerSetupWizard;->access$502(Lcom/android/settings/LocalePickerSetupWizard;Ljava/util/Locale;)Ljava/util/Locale;

    const-string v5, "OOBE_LocalePickerSetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "locale current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " selected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    #getter for: Lcom/android/settings/LocalePickerSetupWizard;->mSelectedLocale:Ljava/util/Locale;
    invoke-static {v7}, Lcom/android/settings/LocalePickerSetupWizard;->access$500(Lcom/android/settings/LocalePickerSetupWizard;)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    #getter for: Lcom/android/settings/LocalePickerSetupWizard;->mSelectedLocale:Ljava/util/Locale;
    invoke-static {v5}, Lcom/android/settings/LocalePickerSetupWizard;->access$500(Lcom/android/settings/LocalePickerSetupWizard;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    #calls: Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z
    invoke-static {v5}, Lcom/android/settings/LocalePickerSetupWizard;->access$600(Lcom/android/settings/LocalePickerSetupWizard;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    #getter for: Lcom/android/settings/LocalePickerSetupWizard;->mLocaleChangeThread:Ljava/lang/Thread;
    invoke-static {v5}, Lcom/android/settings/LocalePickerSetupWizard;->access$700(Lcom/android/settings/LocalePickerSetupWizard;)Ljava/lang/Thread;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "OOBE_LocalePickerSetupWizard"

    const-string v6, "mLocalePicker != null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/app/Activity;->showDialog(I)V

    iget-object v5, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener$1;

    invoke-direct {v7, p0}, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener$1;-><init>(Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/android/settings/LocalePickerSetupWizard;->mLocaleChangeThread:Ljava/lang/Thread;
    invoke-static {v5, v6}, Lcom/android/settings/LocalePickerSetupWizard;->access$702(Lcom/android/settings/LocalePickerSetupWizard;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/LocalePickerSetupWizard;

    #getter for: Lcom/android/settings/LocalePickerSetupWizard;->mLocaleChangeThread:Ljava/lang/Thread;
    invoke-static {v5}, Lcom/android/settings/LocalePickerSetupWizard;->access$700(Lcom/android/settings/LocalePickerSetupWizard;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const-string v5, "OOBE_LocalePickerSetupWizard"

    const-string v6, "am.getConfiguration"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    const-string v5, "OOBE_LocalePickerSetupWizard"

    const-string v6, "locale not changed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
