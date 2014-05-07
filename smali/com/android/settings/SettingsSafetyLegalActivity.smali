.class public Lcom/android/settings/SettingsSafetyLegalActivity;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "SettingsSafetyLegalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final PROPERTY_LSAFETYLEGAL_URL:Ljava/lang/String; = "ro.url.safetylegal"


# instance fields
.field private mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsSafetyLegalActivity;)Lcom/htc/app/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsSafetyLegalActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsSafetyLegalActivity;->showErrorAndFinish(Ljava/lang/String;)V

    return-void
.end method

.method private showErrorAndFinish(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 97
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0f1a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0f1b

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 112
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->finish()V

    .line 142
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->finish()V

    .line 138
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v6, "ro.url.safetylegal"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, userSafetylegalUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 55
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, language:Ljava/lang/String;
    iget-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, country:Ljava/lang/String;
    const-string v6, "locale=%s-%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, loc:Ljava/lang/String;
    const-string v6, "%s&%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v9

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 62
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    .line 65
    iget-object v6, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    if-nez p1, :cond_0

    .line 75
    :goto_0
    iget-object v6, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v7, Lcom/android/settings/SettingsSafetyLegalActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/SettingsSafetyLegalActivity$1;-><init>(Lcom/android/settings/SettingsSafetyLegalActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 89
    iget-object v4, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 90
    .local v4, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v6, 0x7f0c0f1c

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsSafetyLegalActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 91
    iget-object v6, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    iput-object v6, v4, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 92
    iput-boolean v8, v4, Lcom/htc/app/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/SettingsSafetyLegalActivity;->setupAlert()V

    .line 94
    return-void

    .line 73
    .end local v4           #p:Lcom/htc/app/HtcAlertController$AlertParams;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mErrorDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 122
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/SettingsSafetyLegalActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    return-void
.end method
