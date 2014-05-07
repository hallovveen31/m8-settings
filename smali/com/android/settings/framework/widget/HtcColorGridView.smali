.class public Lcom/android/settings/framework/widget/HtcColorGridView;
.super Lcom/android/settings/framework/widget/HtcGridView;
.source "HtcColorGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/framework/widget/HtcGridView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/widget/HtcGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/widget/HtcGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method


# virtual methods
.method protected adjustLayout(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 68
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f0e0096

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 70
    .local v3, spacing:I
    const v4, 0x7f0e0097

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 74
    .local v1, padding:I
    const v4, 0x7f0e0098

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 78
    .local v0, borderWidth:I
    shl-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    .line 79
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/widget/HtcColorGridView;->setHorizontalSpacing(I)V

    .line 80
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/widget/HtcColorGridView;->setVerticalSpacing(I)V

    .line 83
    sub-int/2addr v1, v0

    .line 84
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/settings/framework/widget/HtcColorGridView;->setPadding(IIII)V

    .line 85
    return-void
.end method

.method protected adjustProperties(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/framework/widget/HtcGridView;->adjustProperties(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcColorGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 59
    return-void
.end method
