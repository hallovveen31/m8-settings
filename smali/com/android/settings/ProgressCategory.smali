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
    .parameter "context"
    .parameter "attrs"
    .parameter "emptyTextRes"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 37
    iput-object p1, p0, Lcom/android/settings/ProgressCategory;->mContext:Landroid/content/Context;

    .line 39
    iput p3, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    .line 40
    return-void
.end method

.method private applySkinChange(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/ProgressCategory;->mContext:Landroid/content/Context;

    const-string v1, "section_divider_top"

    const v2, 0x2080099

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    if-ne v3, v4, :cond_3

    :cond_0
    move v0, v2

    .line 49
    .local v0, noDeviceFound:Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_4

    .line 50
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v2, :cond_2

    .line 51
    iget-object v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/ProgressCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 52
    iput-boolean v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 66
    :cond_2
    :goto_1
    return-void

    .end local v0           #noDeviceFound:Z
    :cond_3
    move v0, v1

    .line 47
    goto :goto_0

    .line 55
    .restart local v0       #noDeviceFound:Z
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v3, :cond_2

    .line 56
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    if-nez v3, :cond_5

    .line 57
    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    .line 58
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    const v4, 0x7f0400bd

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    .line 59
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    iget v4, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 60
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/ProgressCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 63
    iput-boolean v2, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_1
.end method

.method public replaceEmptyTextRes(I)V
    .locals 0
    .parameter "emptyTextRes"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/settings/ProgressCategory;->mEmptyTextRes:I

    .line 70
    return-void
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    .line 76
    return-void
.end method
