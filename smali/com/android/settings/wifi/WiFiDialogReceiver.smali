.class public Lcom/android/settings/wifi/WiFiDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiFiDialogReceiver.java"


# static fields
.field public static final ACTION_LAUNCH_WIFI_DIALOG:Ljava/lang/String; = "com.htc.settings.wifi.launchwifidialog"

.field public static final EXTRA_DIALOG_NETWORK_ID:Ljava/lang/String; = "network_id"


# instance fields
.field final DBG:Z

.field final TAG:Ljava/lang/String;

.field private istrigger:Z

.field private network_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WiFiDialogReceiver;->TAG:Ljava/lang/String;

    .line 18
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WiFiDialogReceiver;->DBG:Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WiFiDialogReceiver;->istrigger:Z

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WiFiDialogReceiver;->network_id:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    const-string v1, "com.htc.settings.wifi.launchwifidialog"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const-string v1, "network_id"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WiFiDialogReceiver;->network_id:I

    .line 29
    const-string v1, "istrigger"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WiFiDialogReceiver;->istrigger:Z

    .line 30
    iget-boolean v1, p0, Lcom/android/settings/wifi/WiFiDialogReceiver;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WiFiDialogReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launch wifi dialog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WiFiDialogReceiver;->network_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings/wifi/WiFiDialogActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "network_id"

    iget v2, p0, Lcom/android/settings/wifi/WiFiDialogReceiver;->network_id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    .end local v0           #mIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method
