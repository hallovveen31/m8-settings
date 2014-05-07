.class public Lcom/android/settings/framework/activity/storage/HtcMediaFormat;
.super Lcom/android/settings/framework/app/HtcInternalFragment;
.source "HtcMediaFormat.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcISupportFootBar;


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37


# instance fields
.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field mStorageType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->mStorageType:I

    .line 125
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat$1;-><init>(Lcom/android/settings/framework/activity/storage/HtcMediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/storage/HtcMediaFormat;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/storage/HtcMediaFormat;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->showFinalConfirmation()V

    return-void
.end method

.method private establishInitialState(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 10
    .parameter "inflater"

    .prologue
    const/4 v9, 0x2

    .line 71
    const v7, 0x7f0400a9

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 72
    .local v5, initialView:Landroid/view/View;
    const v7, 0x7f090163

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 74
    .local v4, initialText:Landroid/widget/TextView;
    const v7, 0x7f090164

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 76
    .local v3, initialButton:Landroid/widget/Button;
    iget-object v7, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 83
    .local v1, argument:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 84
    const-string v7, "extra.storage.type"

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->mStorageType:I

    .line 89
    :cond_0
    iget v7, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->mStorageType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 90
    const v7, 0x7f0c0291

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 92
    const v7, 0x7f0c028f

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(I)V

    .line 97
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 98
    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    .local v6, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x5

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 101
    const/16 v7, 0x8

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 105
    .end local v6           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v7, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 108
    .local v0, activity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->isSinglePane()Z

    move-result v7

    if-nez v7, :cond_3

    .line 109
    const v7, 0x7f09015f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooter;

    .line 110
    .local v2, footer:Lcom/htc/widget/HtcFooter;
    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {v2, v9}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 116
    .end local v0           #activity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    .end local v2           #footer:Lcom/htc/widget/HtcFooter;
    :cond_3
    return-object v5
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 139
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v1, 0x7f0c0ecf

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0c0ed0

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 180
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 182
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-class v0, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 191
    const v0, 0x7f0c0e4e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 149
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->showFinalConfirmation()V

    goto :goto_0

    .line 157
    :cond_2
    if-nez p2, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->establishInitialState(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
