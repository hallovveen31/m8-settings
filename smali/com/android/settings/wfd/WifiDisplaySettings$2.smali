.class Lcom/android/settings/wfd/WifiDisplaySettings$2;
.super Lcom/htc/preference/HtcCheckBoxPreference;
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

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z
    invoke-static {v1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$102(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z
    invoke-static {v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v1

    #calls: Lcom/android/settings/wfd/WifiDisplaySettings;->setListenMode(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$200(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
