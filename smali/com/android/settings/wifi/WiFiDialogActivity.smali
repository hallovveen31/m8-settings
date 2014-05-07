.class public Lcom/android/settings/wifi/WiFiDialogActivity;
.super Landroid/app/Activity;
.source "WiFiDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final WIFI_DIALOG_ID:I = 0x1


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private ap:Lcom/android/settings/wifi/AccessPoint;

.field config:Landroid/net/wifi/WifiConfiguration;

.field private dialog_network_id:I

.field private enabled:Z

.field private htcFontScale:F

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDlgEdit:Z

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mThemeId:I

.field mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->TAG:Ljava/lang/String;

    .line 23
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->DBG:Z

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->dialog_network_id:I

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mDlgEdit:Z

    .line 29
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->enabled:Z

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mThemeId:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->htcFontScale:F

    .line 33
    new-instance v0, Lcom/android/settings/wifi/WiFiDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WiFiDialogActivity$1;-><init>(Lcom/android/settings/wifi/WiFiDialogActivity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method private finishself()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->finish()V

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method protected getConfigByNetworkID()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .prologue
    .line 163
    const/4 v3, 0x0

    .line 164
    .local v3, mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 166
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 167
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v5, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->dialog_network_id:I

    if-ne v4, v5, :cond_0

    .line 168
    move-object v3, v0

    .line 173
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v3
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->finishself()V

    .line 186
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 156
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->finishself()V

    .line 160
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iget-boolean v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->enabled:Z

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "not support:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->finishself()V

    .line 56
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mThemeId:I

    .line 57
    iget v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mThemeId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WiFiDialogActivity;->setTheme(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1030010

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 63
    invoke-static {p0}, Lcom/htc/configuration/HtcWrapConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    move-result v0

    .line 64
    .local v0, appliedHtcFontscale:Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->htcFontScale:F

    .line 65
    iget-boolean v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate]appliedHtcFontscale:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " htcFontScale:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->htcFontScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "network_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->dialog_network_id:I

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->getConfigByNetworkID()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->config:Landroid/net/wifi/WifiConfiguration;

    .line 72
    iget-object v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WiFiDialogActivity;->showDialog(I)V

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid network id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->dialog_network_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->finishself()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    :goto_0
    return-object v0

    .line 140
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 141
    new-instance v1, Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->config:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V

    iput-object v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->ap:Lcom/android/settings/wifi/AccessPoint;

    .line 142
    new-instance v1, Lcom/android/settings/wifi/WifiDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->ap:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mDlgEdit:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {v1, p0, p0, v2, v0}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;I)V

    iput-object v1, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 120
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WiFiDialogActivity;->removeDialog(I)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 123
    :cond_0
    const-string v0, "network_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->dialog_network_id:I

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->getConfigByNetworkID()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->config:Landroid/net/wifi/WifiConfiguration;

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->config:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WiFiDialogActivity;->showDialog(I)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid network id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->dialog_network_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->finishself()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->mThemeId:I

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 88
    .local v1, isThemeChanged:Z
    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->htcFontScale:F

    invoke-static {p0, v2}, Lcom/htc/configuration/HtcWrapConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v0

    .line 90
    .local v0, isFontScaleChanged:Z
    iget-boolean v2, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->DBG:Z

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFontScaleChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v2, p0, Lcom/android/settings/wifi/WiFiDialogActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isThemeChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WiFiDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/WiFiDialogActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WiFiDialogActivity$2;-><init>(Lcom/android/settings/wifi/WiFiDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 110
    :cond_3
    return-void
.end method
