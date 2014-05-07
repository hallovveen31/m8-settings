.class public final Lcom/android/settings/wifi/CmccReminderDialog;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "CmccReminderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CmccReminderDialog"


# instance fields
.field private mOkButton:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettingsOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CmccReminderDialog;->mOkButton:Z

    return-void
.end method

.method private createDialog()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/CmccReminderDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 51
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f0c0b33

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/CmccReminderDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 52
    const v1, 0x7f0c0b34

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/CmccReminderDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 53
    const v1, 0x7f0c00a3

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/CmccReminderDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 54
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 55
    const v1, 0x7f0c00a4

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/CmccReminderDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 56
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/wifi/CmccReminderDialog;->setupAlert()V

    .line 58
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 61
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/CmccReminderDialog;->mOkButton:Z

    .line 63
    iget-boolean v1, p0, Lcom/android/settings/wifi/CmccReminderDialog;->mWifiSettingsOn:Z

    if-nez v1, :cond_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/WifiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/CmccReminderDialog;->startActivity(Landroid/content/Intent;)V

    .line 69
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/CmccReminderDialog;->finish()V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/wifi/CmccReminderDialog;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0f0088

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 34
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/CmccReminderDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/CmccReminderDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/wifi/CmccReminderDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_settings_on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CmccReminderDialog;->mWifiSettingsOn:Z

    .line 37
    invoke-direct {p0}, Lcom/android/settings/wifi/CmccReminderDialog;->createDialog()V

    .line 38
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onPause()V

    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/CmccReminderDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "CmccReminderDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmccTimer to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/CmccReminderDialog;->mOkButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/CmccReminderDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/android/settings/wifi/CmccReminderDialog;->mOkButton:Z

    invoke-static {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setCmccTimer(Landroid/net/wifi/WifiManager;Z)Z

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/CmccReminderDialog;->finish()V

    .line 47
    return-void
.end method
