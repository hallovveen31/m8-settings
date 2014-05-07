.class public Lcom/android/settings/framework/preference/accessibility/HtcColorPreference;
.super Lcom/android/settings/accessibility/ColorPreference;
.source "HtcColorPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/accessibility/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getValueIndex()I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValueIndex:I

    return v0
.end method

.method protected inflateGridItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected inflateGridView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/widget/AbsListView;
    .locals 2

    new-instance v0, Lcom/android/settings/framework/widget/HtcColorGridView;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/widget/HtcColorGridView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getValueAt(I)I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->setDisplayColor(I)V

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/accessibility/HtcColorPreference;->getValueIndex()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->setSelected(Z)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
