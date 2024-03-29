.class public Lcom/android/settings/accessibility/ColorPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "ColorPreference.java"


# instance fields
.field private mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

.field private mPreviewEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f04004d

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcDialogPreference;->setDialogLayoutResource(I)V

    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->setListItemLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected getTitleAt(I)Ljava/lang/CharSequence;
    .locals 10

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getValueAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c1089

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .locals 7

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getValueAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v6, 0x7f090039

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/16 v6, 0xff

    if-ge v0, v6, :cond_1

    const v6, 0x7f020218

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v6, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ColorPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    const v6, 0x7f09003a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    iget-boolean v3, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewEnabled:Z

    if-eqz v3, :cond_0

    const v3, 0x7f09017d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xff

    if-ge v3, v4, :cond_1

    const v3, 0x7f020218

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const/high16 v3, 0x3f80

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const v3, 0x3e4ccccd

    goto :goto_3
.end method

.method public setPreviewEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/ColorPreference;->mPreviewEnabled:Z

    if-eqz p1, :cond_1

    const v0, 0x7f0400bb

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setWidgetLayoutResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
