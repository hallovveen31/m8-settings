.class public Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings;
.super Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;
.source "HtcTransferIPhoneSetupWizardSettings.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyFooterBar(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 5

    const/4 v4, -0x1

    new-instance v2, Lcom/htc/widget/HtcOverlapLayout;

    invoke-direct {v2, p1}, Lcom/htc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/htc/widget/HtcFooter;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x2040268

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings$1;-><init>(Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method protected enabledBackupButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSetupWizardSettings;->applyFooterBar(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
