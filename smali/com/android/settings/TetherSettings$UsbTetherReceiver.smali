.class Lcom/android/settings/TetherSettings$UsbTetherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbTetherReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$UsbTetherReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$UsbTetherReceiver;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/android/settings/TetherSettings;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceive:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/TetherSettings;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.htc.android.enableIS.UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/TetherSettings$UsbTetherReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings$UsbTetherReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    const v2, 0x7f0c0511

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    const-string v1, "com.htc.android.openingIS.UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings$UsbTetherReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/TetherSettings$UsbTetherReceiver;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mUsbTether:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$500(Lcom/android/settings/TetherSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    const v2, 0x7f0c054b

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method
