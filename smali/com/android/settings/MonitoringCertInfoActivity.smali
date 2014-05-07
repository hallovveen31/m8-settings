.class public Lcom/android/settings/MonitoringCertInfoActivity;
.super Landroid/app/Activity;
.source "MonitoringCertInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private hasDeviceOwner:Z

.field private mHtcFontScale:F

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/MonitoringCertInfoActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MonitoringCertInfoActivity;->TAG:Ljava/lang/String;

    .line 48
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    iput-boolean v0, p0, Lcom/android/settings/MonitoringCertInfoActivity;->DEBUG:Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mHtcFontScale:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MonitoringCertInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/settings/MonitoringCertInfoActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MonitoringCertInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/MonitoringCertInfoActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 139
    iget-boolean v1, p0, Lcom/android/settings/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/settings/MonitoringCertInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedStates"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {p0}, Landroid/content/res/HtcConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    iput v5, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mHtcFontScale:F

    .line 68
    invoke-static {p0, v7}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mThemeId:I

    .line 69
    iget v5, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mThemeId:I

    invoke-virtual {p0, v5}, Lcom/android/settings/MonitoringCertInfoActivity;->setTheme(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v8, 0x7f0f0088

    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 73
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings/MonitoringCertInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 76
    .local v3, dpm:Landroid/app/admin/DevicePolicyManager;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v5, 0x7f0c1290

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 78
    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 79
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    .line 81
    iget-boolean v5, p0, Lcom/android/settings/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    if-eqz v5, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c1291

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v5, v8, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, message:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 86
    const v1, 0x7f0c128f

    .line 94
    .end local v4           #message:Ljava/lang/String;
    .local v1, buttonLabel:I
    :goto_1
    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 96
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 97
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 99
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_2
    new-instance v5, Lcom/android/settings/MonitoringCertInfoActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settings/MonitoringCertInfoActivity$1;-><init>(Lcom/android/settings/MonitoringCertInfoActivity;)V

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 108
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 109
    return-void

    .end local v1           #buttonLabel:I
    .end local v2           #dialog:Landroid/app/Dialog;
    :cond_0
    move v5, v7

    .line 79
    goto :goto_0

    .line 89
    :cond_1
    const v5, 0x1080078

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 90
    const v5, 0x7f0c1292

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 91
    const v1, 0x7f0c1293

    .restart local v1       #buttonLabel:I
    goto :goto_1

    .line 100
    .restart local v2       #dialog:Landroid/app/Dialog;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v2

    iget v3, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mThemeId:I

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 116
    .local v1, isThemeChanged:Z
    :cond_0
    iget v2, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mHtcFontScale:F

    invoke-static {p0, v2}, Landroid/content/res/HtcConfiguration;->checkHtcFontscaleChanged(Landroid/content/Context;F)Z

    move-result v0

    .line 118
    .local v0, isFontScaleChanged:Z
    iget-boolean v2, p0, Lcom/android/settings/MonitoringCertInfoActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/android/settings/MonitoringCertInfoActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFontScaleChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/android/settings/MonitoringCertInfoActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isThemeChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/MonitoringCertInfoActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/MonitoringCertInfoActivity$2;-><init>(Lcom/android/settings/MonitoringCertInfoActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 135
    :cond_3
    return-void
.end method
