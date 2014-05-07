.class public Lcom/android/settings/framework/preference/accessibility/HtcColorPreference;
.super Lcom/android/settings/accessibility/ColorPreference;
.source "HtcColorPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/accessibility/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected getValueIndex()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/settings/framework/preference/accessibility/HtcColorPreference;->mValueIndex:I

    return v0
.end method

.method protected inflateGridItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 50
    new-instance v0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/accessibility/HtcColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected inflateGridView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/widget/AbsListView;
    .locals 2
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 44
    new-instance v0, Lcom/android/settings/framework/widget/HtcColorGridView;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/accessibility/HtcColorPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/widget/HtcColorGridView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "index"

    .prologue
    .line 55
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/accessibility/HtcColorPreference;->getValueAt(I)I

    move-result v0

    .local v0, argb:I
    move-object v1, p1

    .line 58
    check-cast v1, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;

    .line 60
    .local v1, itemView:Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;
    invoke-virtual {v1, v0}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->setDisplayColor(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/accessibility/HtcColorPreference;->getValueIndex()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->setSelected(Z)V

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
