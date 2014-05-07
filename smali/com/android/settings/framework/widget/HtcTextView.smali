.class public Lcom/android/settings/framework/widget/HtcTextView;
.super Landroid/widget/TextView;
.source "HtcTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/widget/HtcTextView$DisabledAllCapsTransformationMethod;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcTextView;->checkAllCapsTransformationMethod()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcTextView;->checkAllCapsTransformationMethod()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcTextView;->checkAllCapsTransformationMethod()V

    .line 70
    return-void
.end method

.method private checkAllCapsTransformationMethod()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/framework/widget/HtcTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    .line 79
    .local v1, method:Landroid/text/method/TransformationMethod;
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcTextView;->mContext:Landroid/content/Context;

    .line 81
    .local v0, context:Landroid/content/Context;
    instance-of v2, v1, Landroid/text/method/AllCapsTransformationMethod;

    if-eqz v2, :cond_0

    .line 82
    invoke-static {v0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportAllCaps(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    new-instance v2, Lcom/android/settings/framework/widget/HtcTextView$DisabledAllCapsTransformationMethod;

    invoke-direct {v2, v0}, Lcom/android/settings/framework/widget/HtcTextView$DisabledAllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/widget/HtcTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public setAllCaps(Z)V
    .locals 1
    .parameter "allCaps"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/framework/widget/HtcTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportAllCaps(Landroid/content/Context;)Z

    move-result v0

    and-int/2addr p1, v0

    .line 107
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 108
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "resid"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/framework/widget/HtcTextView;->checkAllCapsTransformationMethod()V

    .line 102
    return-void
.end method
