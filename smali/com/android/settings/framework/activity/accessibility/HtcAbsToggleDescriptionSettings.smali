.class public Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "HtcAbsToggleDescriptionSettings.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;


# static fields
.field private static final MSG_IN_BACKGROUND:I = 0x64

.field private static final MSG_POST_CREATE_VIEW_IN_BACKGROUND:I = 0x65

.field private static final MSG_SHOW_CONTENT_VIEW:I = 0x2

.field private static final MSG_UPDATE_TOGGLE_BUTTON:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mRootView:Landroid/view/View;

.field private mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

.field private mToggleButtonChecked:Z

.field private mViewContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mViewContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private postCreateView()V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04004e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0900a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->getDescriptionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->getToggleButtonStateInBackground()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mToggleButtonChecked:Z

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getUiHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateToggleButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    iget-boolean v1, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mToggleButtonChecked:Z

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getDescriptionText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getToggleButtonStateInBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/htc/widget/HtcToggleButtonLight;

    invoke-direct {v2, v0}, Lcom/htc/widget/HtcToggleButtonLight;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    iget-object v2, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->addToggleButtonToActionBarExt(Lcom/htc/widget/HtcToggleButtonLight;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcToggleButtonLight;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButtonLight$OnCheckedChangeListener;)V

    return-void
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButtonLight;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mToggleButton:Lcom/htc/widget/HtcToggleButtonLight;

    if-ne p1, v0, :cond_0

    iput-boolean p2, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mToggleButtonChecked:Z

    invoke-virtual {p0, p2}, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->onToggleButtonChecked(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mViewContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mViewContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;->getNonUiHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onHandleNonUiMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->postCreateView()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onHandleUiMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->updateToggleButton()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/settings/framework/activity/accessibility/HtcAbsToggleDescriptionSettings;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onToggleButtonChecked(Z)V
    .locals 0

    return-void
.end method
