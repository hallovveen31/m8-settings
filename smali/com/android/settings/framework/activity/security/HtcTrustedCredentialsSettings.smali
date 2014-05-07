.class public Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;
.super Landroid/app/Fragment;
.source "HtcTrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$4;,
        Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$AliasOperation;,
        Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$ViewHolder;,
        Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;,
        Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;,
        Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
    }
.end annotation


# static fields
.field public static final TAB_SYSTEM:Ljava/lang/String; = "system"

.field public static final TAB_USER:Ljava/lang/String; = "user"

.field private static final TAG:Ljava/lang/String; = "HtcTrustedCredentialsSettings"


# instance fields
.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mContent:Landroid/view/View;

.field private mIsAlignLastControl:Z

.field private mIsInForeground:Z

.field mListView:Lcom/htc/widget/HtcListView;

.field private mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

.field private final mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v0

    const/high16 v2, 0x40b0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mIsAlignLastControl:Z

    iput-boolean v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mIsInForeground:Z

    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$1500(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mIsAlignLastControl:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->setLoadingVisibility(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;)Lcom/android/org/conscrypt/TrustedCertificateStore;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method private initActionBar()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    :cond_1
    return-void
.end method

.method private setLoadingVisibility(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private showCertDialog(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)V
    .locals 12

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;
    invoke-static {p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$2300(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Landroid/net/http/SslCertificate;

    move-result-object v10

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v9

    const-class v10, Landroid/widget/TextView;

    invoke-static {v9, v10}, Lcom/android/settings/framework/util/HtcViewFinder;->findViewsByClass(Landroid/view/View;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/high16 v10, -0x100

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x104052b

    invoke-virtual {v1, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    const v10, 0x104000a

    new-instance v11, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$2;

    invoke-direct {v11, p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$2;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;)V

    invoke-virtual {v1, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    const v10, 0x10202fc

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v10, 0x7f040105

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v10, 0x7f09023c

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;
    invoke-static {p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    move-result-object v10

    #calls: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)I
    invoke-static {v10, p1}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->access$2400(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    new-instance v10, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3;

    invoke-direct {v10, p0, p1, v2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$3;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->initActionBar()V

    new-instance v0, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->initActionBar()V

    const v3, 0x7f040081

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    const-string v3, "user"

    const-string v4, "tab"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;

    :cond_0
    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mContent:Landroid/view/View;

    #getter for: Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->mList:I
    invoke-static {v2}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$Tab;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;)V

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mListView:Lcom/htc/widget/HtcListView;

    new-instance v4, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$1;-><init>(Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings$TrustedCertificateAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mContent:Landroid/view/View;

    return-object v3
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mIsInForeground:Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->unregister()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mIsInForeground:Z

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;->setOnStatusBarTapListener(Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver$OnStatusBarTapListener;)V

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mStatusBarTapReceiver:Lcom/android/settings/framework/receiver/HtcStatusBarTapReceiver;

    invoke-virtual {v0}, Lcom/android/settings/framework/receiver/HtcAbsReceiver;->register()V

    :cond_0
    return-void
.end method

.method public onStatusBarTapEvent()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mIsInForeground:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
