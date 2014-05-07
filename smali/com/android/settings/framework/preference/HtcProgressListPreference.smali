.class public Lcom/android/settings/framework/preference/HtcProgressListPreference;
.super Lcom/htc/preference/HtcListPreference;
.source "HtcProgressListPreference.java"


# instance fields
.field protected mIcon:Landroid/widget/ImageView;

.field protected mInitialized:Z

.field protected mProgress:Landroid/widget/ProgressBar;

.field protected mProgressBarVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mInitialized:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcProgressListPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mInitialized:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcProgressListPreference;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 1

    const v0, 0x7f04006b

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method private updateUIVisibility()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mInitialized:Z

    const v0, 0x7f0900d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0900d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgress:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcProgressListPreference;->updateUIVisibility()V

    :cond_0
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/framework/preference/HtcProgressListPreference;->mProgressBarVisibility:Z

    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcProgressListPreference;->updateUIVisibility()V

    :cond_0
    return-void
.end method
