.class public Lcom/android/settings/framework/widget/HtcListItemDivider;
.super Landroid/view/View;
.source "HtcListItemDivider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    const v0, 0x2080035

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/widget/HtcListItemDivider;->setBackgroundResource(I)V

    .line 33
    return-void
.end method

.method public static appendDivider(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "content"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 46
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .local v3, relativeLayout:Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 61
    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 67
    new-instance v0, Lcom/android/settings/framework/widget/HtcListItemDivider;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/widget/HtcListItemDivider;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, divider:Lcom/android/settings/framework/widget/HtcListItemDivider;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x205

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 79
    .local v1, merginLeftRight:I
    invoke-virtual {v2, v1, v6, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 82
    invoke-virtual {v0, v2}, Lcom/android/settings/framework/widget/HtcListItemDivider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 85
    return-object v3
.end method
