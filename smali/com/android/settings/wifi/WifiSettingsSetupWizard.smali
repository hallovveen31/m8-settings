.class public Lcom/android/settings/wifi/WifiSettingsSetupWizard;
.super Lcom/htc/widget/setupwizard/HtcWizardActivity;
.source "WifiSettingsSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonBackOnClickListener;,
        Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonNextOnClickListener;
    }
.end annotation


# static fields
.field private static final DIALOG_ID_MOBILE_PROMPT:I = 0x66

.field private static final DIALOG_ID_VZW_WIFI_WARNING:I = 0x67

.field private static final DIALOG_ID_WIFI_PROMPT:I = 0x65

.field private static final INTENT_STRING_LAUNCH_BY_ICON:Ljava/lang/String; = "LaunchByIcon"

.field private static final INTENT_STRING_NOT_FINISH_WHEN_BACK_KEY_PRESSED:Ljava/lang/String; = "SelfFinishBackKeyPressed"

.field private static final INTENT_STRING_PROMPT_MOBILE_ALERT:Ljava/lang/String; = "isPromptMobileAlert"

.field private static final INTENT_STRING_SHOW_LEAVING_DIALOG:Ljava/lang/String; = "ShowLeavingDialog"

.field private static final INTENT_STRING_SHOW_MOBILE:Ljava/lang/String; = "isShowMobile"

.field private static final INTENT_STRING_SHOW_WIFI:Ljava/lang/String; = "isShowWifi"

.field private static final RESULT_BACK_KEY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OOBE_WifiSettingsSetupWizard"

.field private static final THEME_CATEGORY:I


# instance fields
.field private mConnectingDialog:Lcom/android/settings/wifi/ConnectingDialog;

.field private mHtcThemeId:I

.field private mLaunchByIcon:Z

.field private mMobilePromptDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mProgressBarMaxNumber:I

.field private mProgressBarNumber:I

.field private mVzwWifiWarningDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mWifiEnabledBySetup:Z

.field private mWifiFragment:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPromptDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private mbBackFinish:Z

.field private mbPromptMobileAlert:Z

.field private mbShowMobile:Z

.field private mbShowWifi:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;-><init>()V

    .line 68
    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarNumber:I

    .line 69
    iput v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarMaxNumber:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbBackFinish:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mLaunchByIcon:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowMobile:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowWifi:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbPromptMobileAlert:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiEnabledBySetup:Z

    .line 89
    iput v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mHtcThemeId:I

    .line 281
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/WifiSettingsSetupWizard;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->isAnimating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbPromptMobileAlert:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowMobile:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiFragment:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->doNextClickExecution()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/WifiSettingsSetupWizard;Lcom/android/settings/wifi/ConnectingDialog;)Lcom/android/settings/wifi/ConnectingDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mConnectingDialog:Lcom/android/settings/wifi/ConnectingDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->isAnimating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiSettingsSetupWizard;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setNextBtnEnabled(Z)V

    return-void
.end method

.method private doNextClickExecution()V
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->isWifiNetworkSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiFragment:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->onDestoryDoMobileNetworkSetup()V

    .line 252
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setResult(I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->finish()V

    .line 279
    :goto_0
    return-void

    .line 256
    :cond_0
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->showDialog(I)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiFragment:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->onDestoryDoMobileNetworkSetup()V

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mConnectingDialog:Lcom/android/settings/wifi/ConnectingDialog;

    if-eqz v0, :cond_2

    .line 263
    const-string v0, "OOBE_WifiSettingsSetupWizard"

    const-string v1, "ConnectingDialog already popup!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_2
    const-string v0, "OOBE_WifiSettingsSetupWizard"

    const-string v1, "ConnectingDialog.show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard$2;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)V

    invoke-static {p0, v0}, Lcom/android/settings/wifi/ConnectingDialog;->show(Landroid/content/Context;Lcom/android/settings/wifi/ConnectingDialog$OnDismissListener;)Lcom/android/settings/wifi/ConnectingDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mConnectingDialog:Lcom/android/settings/wifi/ConnectingDialog;

    goto :goto_0
.end method

.method static getFinalString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "str_id"

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, string:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    const-string v1, "Wi-Fi"

    const-string v2, "WLAN"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_0
    return-object v0
.end method

.method private getThemeColor()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 492
    sget-object v2, Lcom/android/settings/R$styleable;->myStylable:[I

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 493
    .local v1, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 494
    .local v0, color:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 495
    return v0
.end method

.method private isNetworkConnected()Z
    .locals 6

    .prologue
    .line 382
    const/4 v2, 0x0

    .line 383
    .local v2, isConnected:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 384
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 385
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 387
    const-string v3, "OOBE_WifiSettingsSetupWizard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNetworkConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    return v2
.end method

.method private isWifiNetworkSet()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 394
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 395
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 396
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 400
    const-string v3, "OOBE_WifiSettingsSetupWizard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWifiNetworkSet: getType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setIMEWindowBackground()V
    .locals 5

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, STATUS_BAR_BACKGROUND_INDEX:I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f020071

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 183
    .local v2, layerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 184
    .local v1, colorDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getThemeColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 185
    return-void
.end method

.method private setup()V
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarNumber:I

    iget v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarMaxNumber:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setProgressBar(II)V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setupPhoneLayout()V

    .line 193
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowWifi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 194
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mLaunchByIcon:Z

    if-eqz v0, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, "OOBE_WifiSettingsSetupWizard"

    const-string v1, "prompt wifi dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->showDialog(I)V

    .line 205
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiFragment:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    .line 206
    return-void

    .line 200
    :cond_1
    const-string v0, "OOBE_WifiSettingsSetupWizard"

    const-string v1, "force OOBE to enable wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method private setupPhoneLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbBackFinish:Z

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->hideBackBtn(Z)V

    .line 219
    :goto_0
    new-instance v0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonNextOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonNextOnClickListener;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;Lcom/android/settings/wifi/WifiSettingsSetupWizard$1;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setNextBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowMobile:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowWifi:Z

    if-eqz v0, :cond_1

    .line 223
    const v0, 0x7f0c04f7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setTitleText(I)V

    .line 231
    :goto_1
    return-void

    .line 215
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonBackOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard$buttonBackOnClickListener;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;Lcom/android/settings/wifi/WifiSettingsSetupWizard$1;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setBackBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 225
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowMobile:Z

    if-eqz v0, :cond_2

    .line 226
    const v0, 0x7f0c04f8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setTitleText(I)V

    goto :goto_1

    .line 229
    :cond_2
    const v0, 0x7f0c04f9

    invoke-static {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setTitleText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiEnabledBySetup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->isWifiNetworkSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const-string v0, "OOBE_WifiSettingsSetupWizard"

    const-string v1, "disable wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 176
    :cond_0
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->finish()V

    .line 177
    return-void
.end method

.method getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method isShowMobile()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowMobile:Z

    return v0
.end method

.method isShowWifi()Z
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowWifi:Z

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 408
    const-string v2, "OOBE_WifiSettingsSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-ne p1, v2, :cond_1

    .line 411
    if-ne p2, v5, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setNextBtnEnabled(Z)V

    .line 414
    const-string v2, "OOBE_WifiSettingsSetupWizard"

    const-string v3, "enable wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 416
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mLaunchByIcon:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiEnabledBySetup:Z

    .line 418
    new-instance v2, Lcom/android/settings/wifi/WifiSettingsSetupWizard$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard$3;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 437
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 460
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mMobilePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-ne p1, v2, :cond_3

    .line 443
    if-ne p2, v5, :cond_2

    .line 444
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->doNextClickExecution()V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiFragment:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    invoke-virtual {v2, v6}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->setMobileNetworkChecked(Z)V

    goto :goto_0

    .line 449
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mVzwWifiWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-ne p1, v2, :cond_0

    .line 451
    if-ne p2, v5, :cond_0

    .line 452
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiFragment:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->onDestoryDoMobileNetworkSetup()V

    .line 453
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.htcsetupwizard"

    const-string v3, "com.htc.android.htcsetupwizard.activity.PopupLeaveActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v2, "ShowLeavingDialog"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v5, v2}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    const-string v3, "OOBE_WifiSettingsSetupWizard"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {p0, v5}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mHtcThemeId:I

    .line 98
    iget v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mHtcThemeId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setTheme(I)V

    .line 100
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v3, 0x7f04009f

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setSubContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 106
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 107
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcOverlapLayout;

    .line 108
    .local v1, overlay:Lcom/htc/widget/HtcOverlapLayout;
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcOverlapLayout;->isActionBarVisible(Z)V

    .line 109
    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcOverlapLayout;->setInsetStatusBar(Z)V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setIMEWindowBackground()V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 115
    const-string v3, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbBackFinish:Z

    .line 116
    const-string v3, "LaunchByIcon"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mLaunchByIcon:Z

    .line 117
    const-string v3, "isShowMobile"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowMobile:Z

    .line 118
    const-string v3, "isShowWifi"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowWifi:Z

    .line 119
    const-string v3, "isPromptMobileAlert"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbPromptMobileAlert:Z

    .line 120
    const-string v3, "OOBE_WifiSettingsSetupWizard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLaunchByIcon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mLaunchByIcon:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mbBackFinish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbBackFinish:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mbShowMobile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowMobile:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mbShowWifi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbShowWifi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mbPromptMobileAlert = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbPromptMobileAlert:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v3, "ProgressBarNumber"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarNumber:I

    .line 130
    const-string v3, "ProgressBarMaxNumber"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mProgressBarMaxNumber:I

    .line 133
    :cond_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 134
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setup()V

    .line 135
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 333
    const-string v0, "OOBE_WifiSettingsSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    packed-switch p1, :pswitch_data_0

    .line 376
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 337
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c04fe

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c04ff

    invoke-static {p0, v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b43

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b44

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiPromptDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mMobilePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_1

    .line 351
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0504

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0505

    invoke-static {p0, v1}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getFinalString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00a6

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mMobilePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mMobilePromptDialog:Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 363
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mVzwWifiWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_2

    .line 364
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0500

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0501

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0503

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0502

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mVzwWifiWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 371
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mVzwWifiWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mVzwWifiWarningDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 140
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->removeDialog(I)V

    .line 141
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->removeDialog(I)V

    .line 142
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->removeDialog(I)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mConnectingDialog:Lcom/android/settings/wifi/ConnectingDialog;

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "OOBE_WifiSettingsSetupWizard"

    const-string v1, "dismiss connecting dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mConnectingDialog:Lcom/android/settings/wifi/ConnectingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/ConnectingDialog;->dismiss()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mConnectingDialog:Lcom/android/settings/wifi/ConnectingDialog;

    .line 149
    :cond_0
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onDestroy()V

    .line 150
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 464
    sparse-switch p2, :sswitch_data_0

    .line 471
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 469
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 464
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 298
    const-string v1, "OOBE_WifiSettingsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sparse-switch p1, :sswitch_data_0

    .line 317
    invoke-super {p0, p1, p2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 303
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mbBackFinish:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mLaunchByIcon:Z

    if-eqz v1, :cond_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mWifiFragment:Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizardFragment;->onDestoryDoMobileNetworkSetup()V

    .line 307
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->setResult(I)V

    .line 308
    invoke-super {p0, p1, p2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onResume()V

    .line 157
    iget v0, p0, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->mHtcThemeId:I

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiSettingsSetupWizard$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettingsSetupWizard$1;-><init>(Lcom/android/settings/wifi/WifiSettingsSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 167
    :cond_0
    return-void
.end method

.method public setNextBtnText(I)V
    .locals 0
    .parameter "str_id"

    .prologue
    .line 477
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setNextBtnText(I)V

    .line 478
    return-void
.end method
