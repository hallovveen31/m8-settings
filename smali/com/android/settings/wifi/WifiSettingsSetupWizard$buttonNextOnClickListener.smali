.class Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonNextOnClickListener;
.super Ljava/lang/Object;
.source "WifiSettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettingsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "buttonNextOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;Lcom/android/settings/wifi/WifiSettingsSetupWizard$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonNextOnClickListener;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    #calls: Lcom/htc/widget/setupwizard/HtcWizardActivity;->isAnimating()Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->access$200(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    #getter for: Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbPromptMobileAlert:Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->access$300(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    #getter for: Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowMobile:Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->access$400(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    #getter for: Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiFragment:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->access$500(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->isMobileNetworkChecked()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    #calls: Lcom/android/settings/wifi/WifiSettingsSetupWizard;->doNextClickExecution()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->access$600(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "OOBE_WifiSettingsSetupWizard"

    const-string v1, "show mobile prompt dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonNextOnClickListener;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
