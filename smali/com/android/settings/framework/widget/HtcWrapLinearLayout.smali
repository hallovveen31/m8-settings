.class public Lcom/android/settings/framework/widget/HtcWrapLinearLayout;
.super Landroid/widget/LinearLayout;
.source "HtcWrapLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private static setEnabledForAllViews(Landroid/view/View;Z)V
    .locals 4
    .parameter "root"
    .parameter "enabled"

    .prologue
    .line 62
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 63
    check-cast v1, Landroid/view/ViewGroup;

    .line 64
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 66
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/settings/framework/widget/HtcWrapLinearLayout;->setEnabledForAllViews(Landroid/view/View;Z)V

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0           #N:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 71
    return-void
.end method


# virtual methods
.method public setEnabledForAllViews(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 43
    .local v0, isVisible:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcWrapLinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 45
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/widget/HtcWrapLinearLayout;->setVisibility(I)V

    .line 48
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/framework/widget/HtcWrapLinearLayout;->setEnabledForAllViews(Landroid/view/View;Z)V

    .line 50
    if-eqz v0, :cond_1

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/widget/HtcWrapLinearLayout;->setVisibility(I)V

    .line 53
    :cond_1
    return-void
.end method
