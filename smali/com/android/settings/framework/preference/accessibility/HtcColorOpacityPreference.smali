.class public Lcom/android/settings/framework/preference/accessibility/HtcColorOpacityPreference;
.super Lcom/android/settings/framework/preference/accessibility/HtcColorPreference;
.source "HtcColorOpacityPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/accessibility/HtcColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/accessibility/HtcColorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected inflateGridItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 57
    new-instance v0, Lcom/htc/widget/HtcGridItem;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/accessibility/HtcColorOpacityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcGridItem;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, itemView:Lcom/htc/widget/HtcGridItem;
    invoke-virtual {v0}, Lcom/htc/widget/HtcGridItem;->getImage()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020218

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 62
    return-object v0
.end method

.method protected inflateGridView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/widget/AbsListView;
    .locals 2
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 49
    new-instance v0, Lcom/android/settings/framework/widget/HtcGridView;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/accessibility/HtcColorOpacityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/framework/widget/HtcGridView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onBindListItem(Landroid/view/View;I)V
    .locals 8
    .parameter "view"
    .parameter "index"

    .prologue
    .line 67
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/accessibility/HtcColorOpacityPreference;->getValueAt(I)I

    move-result v0

    .local v0, argb:I
    move-object v4, p1

    .line 70
    check-cast v4, Lcom/htc/widget/HtcGridItem;

    .line 73
    .local v4, itemView:Lcom/htc/widget/HtcGridItem;
    invoke-virtual {v4}, Lcom/htc/widget/HtcGridItem;->getImage()Landroid/widget/ImageView;

    move-result-object v3

    .line 74
    .local v3, image:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 76
    .local v2, foreground:Landroid/graphics/drawable/Drawable;
    instance-of v5, v2, Lcom/htc/videowidget/videoview/utilities/subtitle/ui/BorderColorDrawable;

    if-eqz v5, :cond_0

    .line 77
    check-cast v2, Lcom/htc/videowidget/videoview/utilities/subtitle/ui/BorderColorDrawable;

    .end local v2           #foreground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/ui/BorderColorDrawable;->setColor(I)V

    .line 88
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/accessibility/HtcColorOpacityPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcGridItem;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 89
    return-void

    .line 79
    .restart local v2       #foreground:Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v1, Lcom/htc/videowidget/videoview/utilities/subtitle/ui/BorderColorDrawable;

    invoke-direct {v1, v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/ui/BorderColorDrawable;-><init>(I)V

    .line 82
    .local v1, border:Lcom/htc/videowidget/videoview/utilities/subtitle/ui/BorderColorDrawable;
    const/4 v5, 0x2

    const-string v6, "#dedede"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xff

    invoke-virtual {v1, v5, v6, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/ui/BorderColorDrawable;->setBorder(III)V

    .line 84
    invoke-virtual {v4}, Lcom/htc/widget/HtcGridItem;->getImage()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
