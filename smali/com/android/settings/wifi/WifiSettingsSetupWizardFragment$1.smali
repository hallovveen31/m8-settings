.class Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$1;
.super Ljava/lang/Object;
.source "WifiSettingsSetupWizardFragment.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$1;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4

    instance-of v1, p1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "OOBE_WifiSettingsSetupWizardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment$1;->this$0:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    #setter for: Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->mbMobileNetworkChecked:Z
    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->access$002(Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;Z)Z

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
