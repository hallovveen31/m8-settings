.class Lcom/android/settings/wfd/WifiDisplaySettings$3;
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
    .parameter
    .parameter "x0"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$302(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    .line 393
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/settings/wfd/WifiDisplaySettings;->startAutoGO()V
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$400(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    .line 398
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$3;->setChecked(Z)V

    .line 399
    return-void

    .line 392
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/settings/wfd/WifiDisplaySettings;->stopAutoGO()V
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$500(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    goto :goto_1
.end method
