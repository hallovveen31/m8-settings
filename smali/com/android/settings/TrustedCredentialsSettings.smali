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

    const-string v0, "com.android.settings.TrustedCredentialsSettings"

    invoke-direct {p0, v0}, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c0c5f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x65

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalCarouselFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v1

    const-string v2, "tab"

    const-string v3, "system"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    const-string v2, "tab"

    const-string v3, "user"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

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

    const-string v2, "system"

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselFragment;->setDefaultTab(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mActivity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    :cond_0
    return-void
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onCurrentTabChanged(Ljava/lang/String;)V

    return-void
.end method
