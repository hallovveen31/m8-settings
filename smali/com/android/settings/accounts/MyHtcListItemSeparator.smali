.class public Lcom/android/settings/accounts/MyHtcListItemSeparator;
.super Lcom/htc/widget/HtcListItemSeparator;
.source "MyHtcListItemSeparator.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemSeparator;->initLayout()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;I)V

    .line 34
    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemSeparator;->initLayout()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemSeparator;->initLayout()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListItemSeparator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/accounts/MyHtcListItemSeparator;->initLayout()V

    .line 47
    return-void
.end method

.method private initLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 14
    const-string v2, ""

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/accounts/MyHtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/MyHtcListItemSeparator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 17
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/MyHtcListItemSeparator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 20
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 21
    invoke-virtual {p0}, Lcom/android/settings/accounts/MyHtcListItemSeparator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accounts/Util;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 24
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
