.class public Lcom/android/settings/TrustedCredentialsSettings;
.super Lcom/android/settings/framework/app/HtcInternalCarouselFragment;
.source "TrustedCredentialsSettings.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.android.settings.TrustedCredentialsSettings"

.field private static final TAG:Ljava/lang/String; = "ManageApplications"


# instance fields
.field private mActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "com.android.settings.TrustedCredentialsSettings"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f0c0c5f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x65

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v1

    .line 68
    .local v1, host:Lcom/htc/fragment/widget/CarouselHost;
    const-string v2, "tab"

    const-string v3, "system"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/htc/fragment/widget/CarouselTabSpec;

    const-string v4, "system"

    const v5, 0x7f0c127b

    const-string v6, "com.android.settings"

    const-class v7, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselTabSpec;->setArguments(Landroid/os/Bundle;)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/htc/fragment/widget/CarouselTabSpec;->setState(I)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    .line 76
    const-string v2, "tab"

    const-string v3, "user"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/htc/fragment/widget/CarouselTabSpec;

    const-string v4, "user"

    const v5, 0x7f0c127c

    const-string v6, "com.android.settings"

    const-class v7, Lcom/android/settings/framework/activity/security/HtcTrustedCredentialsSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/htc/fragment/widget/CarouselTabSpec;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/htc/fragment/widget/CarouselTabSpec;->setArguments(Landroid/os/Bundle;)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/htc/fragment/widget/CarouselTabSpec;->setState(I)Lcom/htc/fragment/widget/CarouselTabSpec;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->addTab(Landroid/content/Context;Lcom/htc/fragment/widget/CarouselTabSpec;)V

    .line 84
    const-string v2, "system"

    invoke-virtual {p0, v2}, Lcom/android/settings/TrustedCredentialsSettings;->setDefaultTab(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 96
    :cond_0
    return-void
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "currentTab"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;->onCurrentTabChanged(Ljava/lang/String;)V

    .line 101
    return-void
.end method
