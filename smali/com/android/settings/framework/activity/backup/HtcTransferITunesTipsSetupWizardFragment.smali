.class public Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsSetupWizardFragment;
.super Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;
.source "HtcTransferITunesTipsSetupWizardFragment.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyFooterBar(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "contentView"

    .prologue
    const/4 v4, -0x1

    .line 58
    new-instance v2, Lcom/htc/widget/HtcOverlapLayout;

    invoke-direct {v2, p1}, Lcom/htc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .local v2, root:Lcom/htc/widget/HtcOverlapLayout;
    new-instance v1, Lcom/htc/widget/HtcFooter;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, footer:Lcom/htc/widget/HtcFooter;
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, button:Lcom/htc/widget/HtcFooterButton;
    new-instance v3, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const v3, 0x2040268

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 69
    new-instance v3, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsSetupWizardFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsSetupWizardFragment$1;-><init>(Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsSetupWizardFragment;)V

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {v2, p2}, Lcom/htc/widget/HtcOverlapLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcOverlapLayout;->addView(Landroid/view/View;)V

    .line 84
    return-object v2
.end method

.method protected enabledBackupButton()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, contentView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsSetupWizardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsSetupWizardFragment;->applyFooterBar(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
