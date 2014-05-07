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

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    .line 63
    iput-boolean v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mHasWebViewInstance:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRotationFlag:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showWebView()V

    return-void
.end method

.method private attachViewsToDialog()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mHasWebViewInstance:Z

    .line 131
    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 132
    iput-boolean v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mHasWebViewInstance:Z

    .line 133
    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 134
    .local v0, parent:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 160
    .end local v0           #parent:Landroid/widget/RelativeLayout;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->createLoadingView()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showLoadingView()V

    .line 163
    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 165
    return-void

    .line 138
    :cond_1
    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->sWebViewRef:Lcom/android/settings/framework/os/HtcTimingReference;

    if-eqz v1, :cond_2

    .line 139
    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->sWebViewRef:Lcom/android/settings/framework/os/HtcTimingReference;

    invoke-virtual {v1}, Lcom/android/settings/framework/os/HtcTimingReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    sput-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    .line 142
    :cond_2
    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    .line 143
    iput-boolean v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mHasWebViewInstance:Z

    .line 144
    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 145
    .restart local v0       #parent:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    goto :goto_0

    .line 149
    .end local v0           #parent:Landroid/widget/RelativeLayout;
    :cond_3
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    .line 150
    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setWebSelectionType(I)V

    goto :goto_0
.end method

.method private createLoadingView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 168
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 169
    .local v0, mInflater:Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 170
    const v2, 0x7f040078

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    .line 174
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    .local v1, mLinearLayout:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 177
    iget-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    return-void
.end method

.method private getThemeId(Landroid/content/Context;ILjava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "themeId"
    .parameter "skinDialogThemeName"

    .prologue
    .line 196
    if-nez p3, :cond_1

    .line 214
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 198
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 201
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 202
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    const-string v3, "style"

    iget-object v4, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v2, p3, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 210
    .local v1, id:I
    if-eqz v1, :cond_0

    move p2, v1

    goto :goto_0
.end method

.method private static readOpenSourceLicenses(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 275
    const-string v3, "ro.config.license_path"

    const-string v4, "/system/etc/NOTICE.html.gz"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    const-string v3, "SettingsLicenseActivity"

    const-string v4, "The system property for the license file is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_0
    return-object v2

    .line 284
    :cond_0
    invoke-static {v0}, Lcom/android/settings/framework/io/GZIPReader;->getContent(Ljava/lang/String;)Lcom/android/settings/framework/io/GZIPReader$GZIPContent;

    move-result-object v1

    .line 286
    .local v1, gzipContent:Lcom/android/settings/framework/io/GZIPReader$GZIPContent;
    invoke-virtual {v1}, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->getContent()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
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

    .line 291
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/framework/io/GZIPReader$GZIPContent;->getContent()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 260
    const v0, 0x7f0c0f17

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    .line 263
    return-void
.end method

.method private showLoadingView()V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    sget-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showWebView()V
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    sget-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected loadLicenses()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-static {p0}, Lcom/android/settings/SettingsLicenseActivity;->readOpenSourceLicenses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, licenses:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 256
    :goto_0
    return-void

    .line 244
    :cond_0
    sget-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/settings/SettingsLicenseActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLicenseActivity$2;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->setupDialog()V

    .line 77
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mRotationFlag:Z

    .line 92
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onStart()V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->attachViewsToDialog()V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->showProgressDialogAndLoadLicenses()V

    .line 85
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onStop()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 100
    iget-boolean v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mRotationFlag:Z

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/android/settings/framework/os/HtcTimingReference;

    sget-object v1, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    const-wide/32 v2, 0x493e0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/os/HtcTimingReference;-><init>(Ljava/lang/Object;J)V

    sput-object v0, Lcom/android/settings/SettingsLicenseActivity;->sWebViewRef:Lcom/android/settings/framework/os/HtcTimingReference;

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SettingsLicenseActivity;->staticWebView:Landroid/webkit/WebView;

    .line 106
    :cond_0
    return-void
.end method

.method protected setupDialog()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 114
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 115
    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 119
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f0c0f16

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 120
    iget-object v1, p0, Lcom/android/settings/SettingsLicenseActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mForceInverseBackground:Z

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->setupAlert()V

    .line 123
    return-void
.end method

.method protected showProgressDialogAndLoadLicenses()V
    .locals 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mHasWebViewInstance:Z

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/SettingsLicenseActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLicenseActivity$1;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showWebView()V

    goto :goto_0
.end method
