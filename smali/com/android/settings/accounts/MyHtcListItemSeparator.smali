.class public Lcom/android/settings/accounts/MyHtcListItemSeparator;
.super Lcom/htc/widget/HtcListItemSeparator;
.source "MyHtcListItemSeparator.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemSeparator;->initLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemSeparator;->initLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemSeparator;->initLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemSeparator;->initLayout()V

    return-void
.end method

.method private initLayout()V
    .locals 4

    const/4 v3, 0x0

    const-string v2, ""

    invoke-virtual {p0, v3, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accounts/Util;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method
