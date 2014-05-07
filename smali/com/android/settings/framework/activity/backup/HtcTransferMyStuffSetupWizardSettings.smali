.class public Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;
.super Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;
.source "HtcTransferMyStuffSetupWizardSettings.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# static fields
.field private static final RESULT_BACK_KEY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyFooterBar(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "contentView"

    .prologue
    const/4 v4, -0x1

    .line 104
    new-instance v2, Lcom/htc/widget/HtcOverlapLayout;

    invoke-direct {v2, p1}, Lcom/htc/widget/HtcOverlapLayout;-><init>(Landroid/content/Context;)V

    .line 105
    .local v2, root:Lcom/htc/widget/HtcOverlapLayout;
    new-instance v1, Lcom/htc/widget/HtcFooter;

    invoke-direct {v1, p1}, Lcom/htc/widget/HtcFooter;-><init>(Landroid/content/Context;)V

    .line 106
    .local v1, footer:Lcom/htc/widget/HtcFooter;
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, button:Lcom/htc/widget/HtcFooterButton;
    new-instance v3, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Lcom/htc/widget/HtcOverlapLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    const v3, 0x2040268

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 115
    new-instance v3, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings$1;-><init>(Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;)V

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {v2, p2}, Lcom/htc/widget/HtcOverlapLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcOverlapLayout;->addView(Landroid/view/View;)V

    .line 131
    return-object v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, contentView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;->applyFooterBar(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 75
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->onPause()V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->resetFragmentKeyListener()V

    .line 58
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSettings;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferMyStuffSetupWizardSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->setFragmentKeyListener(Landroid/view/KeyEvent$Callback;)V

    .line 49
    :cond_0
    return-void
.end method
