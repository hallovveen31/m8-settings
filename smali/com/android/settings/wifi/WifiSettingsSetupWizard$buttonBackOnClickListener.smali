.class Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonBackOnClickListener;
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
    name = "buttonBackOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonBackOnClickListener;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;Lcom/android/settings/wifi/WifiSettingsSetupWizard$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonBackOnClickListener;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonBackOnClickListener;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    #calls: Lcom/htc/widget/setupwizard/HtcWizardActivity;->isAnimating()Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->access$800(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonBackOnClickListener;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    #getter for: Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiFragment:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->access$500(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->onDestoryDoMobileNetworkSetup()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonBackOnClickListener;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonBackOnClickListener;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizard;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->finish()V

    :cond_0
    return-void
.end method
