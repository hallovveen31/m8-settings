.class public Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;
.super Lcom/android/settings/framework/widget/HtcSquareRelativeLayout;
.source "HtcColorPaletteGridItemView.java"


# instance fields
.field private mBorderView:Landroid/view/View;

.field private mColorView:Landroid/widget/ImageView;

.field private mFramePressedView:Landroid/view/View;

.field private mFrameRestView:Landroid/view/View;

.field private mIsSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, -0x1

    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcSquareRelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mIsSelected:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v2, v0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020192

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mBorderView:Landroid/view/View;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v4, 0x208009c

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v4, 0x208009b

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1}, Lcom/android/settings/framework/content/res/HtcResources;->getHtcThemeOverlayColorFilter(Landroid/content/Context;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, -0x1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcSquareRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mIsSelected:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v2, v0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020192

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mBorderView:Landroid/view/View;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v4, 0x208009c

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v4, 0x208009b

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1}, Lcom/android/settings/framework/content/res/HtcResources;->getHtcThemeOverlayColorFilter(Landroid/content/Context;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/widget/HtcSquareRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mIsSelected:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v2, v0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020192

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mBorderView:Landroid/view/View;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v4, 0x208009c

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v4, 0x208009b

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1}, Lcom/android/settings/framework/content/res/HtcResources;->getHtcThemeOverlayColorFilter(Landroid/content/Context;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setDisplayColor(I)V
    .locals 4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v2, 0xff

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    const v3, 0x7f020218

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    iget-boolean v1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mIsSelected:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mIsSelected:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mIsSelected:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method
