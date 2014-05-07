.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmptyTextRes:I

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    iput-object p1, p0, Lcom/android/settings/ProgressCategory;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    return-void
.end method

.method private applySkinChange(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->mContext:Landroid/content/Context;

    const-string v1, "section_divider_top"

    const v2, 0x2080099

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    if-ne v3, v4, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_4

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    iput-boolean v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    if-nez v3, :cond_5

    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    const v4, 0x7f0400bd

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    iget v4, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    iput-boolean v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_1
.end method

.method public replaceEmptyTextRes(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    return-void
.end method

.method public setProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    return-void
.end method
