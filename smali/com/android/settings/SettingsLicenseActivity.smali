.class public Lcom/android/settings/SettingsLicenseActivity;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "SettingsLicenseActivity.java"


# static fields
.field private static final DEFAULT_LICENSE_PATH:Ljava/lang/String; = "/system/etc/NOTICE.html.gz"

.field private static final PROPERTY_LICENSE_PATH:Ljava/lang/String; = "ro.config.license_path"

.field private static final TAG:Ljava/lang/String; = "SettingsLicenseActivity"

.field private static sWebViewRef:Lcom/android/settings/framework/os/HtcTimingReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/os/HtcTimingReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private static staticWebView:Landroid/webkit/WebView;


# instance fields
.field private mHasWebViewInstance:Z

.field private mLoadingView:Landroid/view/View;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mRotationFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    iput-boolean v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mHasWebViewInstance:Z

    iput-boolean v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRotationFlag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showWebView()V

    return-void
.end method

.method private attachViewsToDialog()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mHasWebViewInstance:Z

    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mHasWebViewInstance:Z

    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->createLoadingView()V

    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showLoadingView()V

    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->sWebViewRef:Lcom/android/settings/framework/os/HtcTimingReference;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->sWebViewRef:Lcom/android/settings/framework/os/HtcTimingReference;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcTimingReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    sput-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    :cond_2
    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mHasWebViewInstance:Z

    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setWebSelectionType(I)V

    goto :goto_0
.end method

.method private createLoadingView()V
    .locals 5

    const/4 v4, -0x1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    if-nez v2, :cond_0

    const v2, 0x7f040078

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getThemeId(Landroid/content/Context;ILjava/lang/String;)I
    .locals 5

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v3, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "style"

    iget-object v4, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v2, p3, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    move p2, v1

    goto :goto_0
.end method

.method private static readOpenSourceLicenses(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const-string v3, "ro.config.license_path"

    const-string v4, "/system/etc/NOTICE.html.gz"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SettingsLicenseActivity"

    const-string v4, "The system property for the license file is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/android/settings/framework/io/GZIPReader;->getContent(Ljava/lang/String;)Lcom/android/settings/framework/io/GZIPReader$GZIPContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->getContent()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SettingsLicenseActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "License HTML is empty (from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->getContent()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private showErrorAndFinish()V
    .locals 2

    const v0, 0x7f0c0f17

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showLoadingView()V
    .locals 2

    sget-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showWebView()V
    .locals 2

    sget-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected loadLicenses()V
    .locals 6

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/settings/SettingsLicenseActivity;->readOpenSourceLicenses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/settings/SettingsLicenseActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLicenseActivity$2;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->setupDialog()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mRotationFlag:Z

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onStart()V

    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->attachViewsToDialog()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->showProgressDialogAndLoadLicenses()V

    return-void
.end method

.method protected onStop()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onStop()V

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-boolean v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mRotationFlag:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/framework/os/HtcTimingReference;

    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    const-wide/32 v2, 0x493e0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/os/HtcTimingReference;-><init>(Ljava/lang/Object;J)V

    sput-object v0, Lcom/android/settings/SettingsLicenseActivity;->sWebViewRef:Lcom/android/settings/framework/os/HtcTimingReference;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method protected setupDialog()V
    .locals 4

    const/4 v3, -0x1

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/htc/app/HtcAlertActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    const v1, 0x7f0c0f16

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    invoke-virtual {p0}, Lcom/htc/app/HtcAlertActivity;->setupAlert()V

    return-void
.end method

.method protected showProgressDialogAndLoadLicenses()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mHasWebViewInstance:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/SettingsLicenseActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLicenseActivity$1;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showWebView()V

    goto :goto_0
.end method
