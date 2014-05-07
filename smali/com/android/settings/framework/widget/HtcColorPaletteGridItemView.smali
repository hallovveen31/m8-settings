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
    .parameter "context"

    .prologue
    const/4 v6, 0x4

    const/4 v5, -0x1

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcSquareRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mIsSelected:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 66
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v3, view:Landroid/view/View;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 77
    .local v0, borderWidth:I
    move v2, v0

    .line 78
    .local v2, margin:I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 79
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    check-cast v3, Landroid/widget/ImageView;

    .end local v3           #view:Landroid/view/View;
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    .line 90
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 91
    .restart local v3       #view:Landroid/view/View;
    const v4, 0x7f020192

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mBorderView:Landroid/view/View;

    .line 103
    new-instance v3, Landroid/view/View;

    .end local v3           #view:Landroid/view/View;
    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 104
    .restart local v3       #view:Landroid/view/View;
    const v4, 0x208009c

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    .line 119
    new-instance v3, Landroid/view/View;

    .end local v3           #view:Landroid/view/View;
    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 120
    .restart local v3       #view:Landroid/view/View;
    const v4, 0x208009b

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1}, Lcom/android/settings/framework/content/res/HtcResources;->getHtcThemeOverlayColorFilter(Landroid/content/Context;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 127
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    .line 131
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->addView(Landroid/view/View;)V

    .line 132
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->addView(Landroid/view/View;)V

    .line 133
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->addView(Landroid/view/View;)V

    .line 134
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x4

    const/4 v5, -0x1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcSquareRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mIsSelected:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 66
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v3, view:Landroid/view/View;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 77
    .local v0, borderWidth:I
    move v2, v0

    .line 78
    .local v2, margin:I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 79
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    check-cast v3, Landroid/widget/ImageView;

    .end local v3           #view:Landroid/view/View;
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    .line 90
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 91
    .restart local v3       #view:Landroid/view/View;
    const v4, 0x7f020192

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mBorderView:Landroid/view/View;

    .line 103
    new-instance v3, Landroid/view/View;

    .end local v3           #view:Landroid/view/View;
    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 104
    .restart local v3       #view:Landroid/view/View;
    const v4, 0x208009c

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    .line 119
    new-instance v3, Landroid/view/View;

    .end local v3           #view:Landroid/view/View;
    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 120
    .restart local v3       #view:Landroid/view/View;
    const v4, 0x208009b

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1}, Lcom/android/settings/framework/content/res/HtcResources;->getHtcThemeOverlayColorFilter(Landroid/content/Context;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 127
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    .line 131
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->addView(Landroid/view/View;)V

    .line 132
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->addView(Landroid/view/View;)V

    .line 133
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->addView(Landroid/view/View;)V

    .line 134
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->addView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x4

    const/4 v5, -0x1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/widget/HtcSquareRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mIsSelected:Z

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 66
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v3, view:Landroid/view/View;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 77
    .local v0, borderWidth:I
    move v2, v0

    .line 78
    .local v2, margin:I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 79
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    check-cast v3, Landroid/widget/ImageView;

    .end local v3           #view:Landroid/view/View;
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    .line 90
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 91
    .restart local v3       #view:Landroid/view/View;
    const v4, 0x7f020192

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mBorderView:Landroid/view/View;

    .line 103
    new-instance v3, Landroid/view/View;

    .end local v3           #view:Landroid/view/View;
    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 104
    .restart local v3       #view:Landroid/view/View;
    const v4, 0x208009c

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    .line 119
    new-instance v3, Landroid/view/View;

    .end local v3           #view:Landroid/view/View;
    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 120
    .restart local v3       #view:Landroid/view/View;
    const v4, 0x208009b

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {p1}, Lcom/android/settings/framework/content/res/HtcResources;->getHtcThemeOverlayColorFilter(Landroid/content/Context;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 127
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iput-object v3, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    .line 131
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->addView(Landroid/view/View;)V

    .line 132
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->addView(Landroid/view/View;)V

    .line 133
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->addView(Landroid/view/View;)V

    .line 134
    iget-object v4, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->addView(Landroid/view/View;)V

    .line 48
    return-void
.end method


# virtual methods
.method public setDisplayColor(I)V
    .locals 4
    .parameter "color"

    .prologue
    .line 182
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 187
    .local v0, alpha:I
    const/16 v2, 0xff

    if-ge v0, v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    const v3, 0x7f020218

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 195
    .local v1, foreground:Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    .line 196
    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1           #foreground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 200
    :goto_0
    return-void

    .line 198
    .restart local v1       #foreground:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mColorView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/settings/framework/widget/HtcSquareRelativeLayout;->setPressed(Z)V

    .line 168
    iget-boolean v1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mIsSelected:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 173
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    return-void

    .line 171
    .end local v0           #visibility:I
    :cond_1
    const/4 v0, 0x4

    .restart local v0       #visibility:I
    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 141
    iget-boolean v1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mIsSelected:Z

    if-ne v1, p1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 144
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mIsSelected:Z

    .line 150
    if-eqz p1, :cond_1

    .line 151
    const/4 v0, 0x0

    .line 155
    .local v0, visibility:I
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFrameRestView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/framework/widget/HtcColorPaletteGridItemView;->mFramePressedView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 153
    .end local v0           #visibility:I
    :cond_1
    const/4 v0, 0x4

    .restart local v0       #visibility:I
    goto :goto_1
.end method
