.class Lcom/android/settings/wfd/WifiDisplaySettings$6;
.super Lcom/htc/preference/HtcListPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Lcom/htc/preference/HtcPreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/preference/HtcListPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {p0}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$802(Lcom/android/settings/wfd/WifiDisplaySettings;I)I

    const-string v0, "%1$s"

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$700(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I
    invoke-static {v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$800(Lcom/android/settings/wfd/WifiDisplaySettings;)I

    move-result v2

    #calls: Lcom/android/settings/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$900(Lcom/android/settings/wfd/WifiDisplaySettings;II)V

    :cond_0
    return-void
.end method
