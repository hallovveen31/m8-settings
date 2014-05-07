.class public Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "WifiOffloadAutoOnDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiOffloadAutoOnDialog"

.field static final WIFI_OFFLOAD_AUTO_ON_DIALOG:I = 0x0

.field static final WIFI_OFFLOAD_NOTIFY_DIALOG:I = 0x1


# instance fields
.field mSsid:Ljava/lang/String;

.field private mTurnOffWifi:Z

.field private mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mTurnOffWifi:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)Lcom/android/settings/wifi/WifiOffloadManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mTurnOffWifi:Z

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x3

    sput v2, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    invoke-static {p0}, Lcom/android/settings/wifi/WifiOffloadManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiOffloadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "ssid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mSsid:Ljava/lang/String;

    const-string v2, "WifiOffloadAutoOnDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mSsid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12

    const/4 v2, 0x0

    const v11, 0x7f0c08a5

    const v10, 0x7f0c00b2

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_2

    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040088

    invoke-virtual {v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f09001e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mSsid:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mSsid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mSsid:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {p0, v11, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    new-instance v4, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$1;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)V

    const v6, 0x7f0900f9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0900fa

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0900fb

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$2;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$2;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)V

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v6, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$3;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$3;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)V

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v6, v9

    invoke-virtual {p0, v11, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne p1, v8, :cond_0

    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v6, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c08a7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c00a5

    new-instance v8, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$4;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog$4;-><init>(Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;)V

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->removeDialog(I)V

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    sput v2, Lcom/android/settings/wifi/WifiOffloadRequest;->mTurningOnState:I

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mTurnOffWifi:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadAutoOnDialog;->mWifiOffloadManager:Lcom/android/settings/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiOffloadManager;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->setupTimer()V

    sget-boolean v1, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiOffloadAutoOnDialog"

    const-string v2, "disable wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onResume()V

    return-void
.end method
